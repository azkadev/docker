import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:docker_dart/docker_engine/docker_engine.dart';
import 'package:general_lib/general_lib.dart';
import 'package:general_lib/scheme/socket_connection.dart';
import 'package:http/http.dart';

/// Cara mendapatkan docker api
/// 1.
/// sudo nano /lib/systemd/system/docker.service
/// 2.
/// Edit:
/// ExecStart=bla bla bla bal  -H tcp://0.0.0.0:1111
///
/// 3.
/// systemctl daemon-reload
///
/// 4.
/// sudo service docker restart
///
/// 5. test
///
/// curl http://0.0.0.0:1111/version
class DockerEngineApi implements DockerEngine {
  @override
  bool is_privilage = false;
  @override
  Uri host_docker_engine_api = Uri.parse(
    "http://0.0.0.0:1111/",
  );

  /// slebew
  /// Default
  /// 0.0.0.0:1111
  @override
  DockerEngineApi({
    Uri? hostDockerEngineApi,
  }) {
    if (hostDockerEngineApi != null) {
      host_docker_engine_api = hostDockerEngineApi;
    }
  }

  @override
  Uri getHostDocker({
    Uri? hostDockerEngineApi,
  }) {
    return hostDockerEngineApi ??= host_docker_engine_api;
  }

  @override
  Future<Map> invokeRaw({
    required String path_method,
    required Map<String, String>? queryParameters,
    required Map? parameters,
    String method_name = "get",
    required Uri? hostDockerEngineApi,
  }) async {
    parameters ??= {};
    Uri url = getHostDocker(hostDockerEngineApi: hostDockerEngineApi).replace(
      path: path_method,
      queryParameters: queryParameters,
    );
    Map<String, String> headers = {
      "Accept": "*/*",
      "Content-Type": "application/json",
    };
    Response response = await Future(() async {
      if (RegExp(r"^(post)$", caseSensitive: false).hasMatch(method_name)) {
        return await post(url, headers: headers, body: json.encode(parameters ?? {}));
      }
      return await get(url, headers: headers);
    });
    Map body = {};
    // print(response.text);
    dynamic data_result = () {
      try {
        return json.decode(response.text);
      } catch (e) {
        return response.text;
      }
    }();

    if (data_result is Map) {
      body.addAll((data_result));
    } else if (data_result is List) {
      body["result"] = data_result;
    }
    return body;
  }

  @override
  Future<Map> invoke({
    required String path_method,
    Map<String, String>? queryParameters,
    Map? parameters,
    String method_name = "get",
    Uri? hostDockerEngineApi,
  }) async {
    Map result = await invokeRaw(
      path_method: path_method,
      queryParameters: queryParameters,
      parameters: parameters,
      method_name: method_name,
      hostDockerEngineApi: hostDockerEngineApi,
    );
    return result;
  }

  Future<WebSocketClient> attachViaWebsocket({
    required String containerId,
    bool logs = true,
    bool stream = true,
    bool stdin = true,
    bool stdout = true,
    bool stderr = true,
    required Future<void> Function(dynamic data) onSocketData,
    required FutureOr<void> Function(SocketConnection socketConnection) onSocketConnection,
    Uri? hostDockerEngineApi,
    Iterable<String>? protocols,
    Map<String, dynamic>? headers,
    CompressionOptions compression = CompressionOptions.compressionDefault,
    HttpClient? httpClient,
    Duration? pingInterval,
  }) async {
    hostDockerEngineApi ??= host_docker_engine_api;

    WebSocketClient ws = WebSocketClient(
      hostDockerEngineApi.replace(
        scheme: hostDockerEngineApi.scheme.replaceAll(RegExp("http", caseSensitive: false), "ws"),
        path: "containers/${containerId}/attach/ws",
        queryParameters: {
          "logs": (logs) ? "true" : "false",
          "stream": (stream) ? "true" : "false",
          'stdin': (stdin) ? "true" : "false",
          'stdout': (stdout) ? "true" : "false",
          'stderr': (stderr) ? "true" : "false",
        },
      ).toString(),
      protocols: protocols,
      compression: compression,
      customClient: httpClient,
      pingInterval: pingInterval,
    );

    await ws.connect(
      onSocketData: onSocketData,
      onSocketConnection: onSocketConnection,
    );
    return ws;
  }
}

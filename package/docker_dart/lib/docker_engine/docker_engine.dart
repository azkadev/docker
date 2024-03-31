import 'dart:async';
import 'dart:convert';

import 'package:general_lib/general_lib.dart';
import 'package:http/http.dart';

class DockerEngine {
  // DockerEngine();

  Uri host_docker_engine_api = Uri.parse(
    "http://0.0.0.0:1111/",
  );

  bool is_privilage = false;

  DockerEngine({
    Uri? hostDockerEngineApi,
    bool? isPrivilage,
  });

  Uri getHostDocker({
    Uri? hostDockerEngineApi,
  }) {
    return hostDockerEngineApi ??= host_docker_engine_api;
  }

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

    body.addAll((response.jsonData ?? {}));
    return body;
  }

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

  // Future<WebSocketClient> attachViaWebsocket({
  //   required String containerId,
  //   bool logs = true,
  //   bool stream = true,
  //   bool stdin = true,
  //   bool stdout = true,
  //   bool stderr = true,
  //   required Future<void> Function(dynamic data) onSocketData,
  //   required FutureOr<void> Function(SocketConnection socketConnection) onSocketConnection,
  //   Uri? hostDockerEngineApi,
  //   Iterable<String>? protocols,
  //   Map<String, dynamic>? headers,
  //   CompressionOptions compression = CompressionOptions.compressionDefault,
  //   HttpClient? httpClient,
  //   Duration? pingInterval,
  // }) async {

  // }
}

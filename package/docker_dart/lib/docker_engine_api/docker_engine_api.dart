import 'dart:async';
import 'dart:io';

import 'package:general_lib/general_lib.dart';
import 'package:general_lib/scheme/socket_connection.dart';

class DockerEngineApi {
  Uri host_docker_engine_api = Uri.parse("http://0.0.0.0:2375/");
  DockerEngineApi({
    Uri? hostDockerEngineApi,
  }) {
    if (hostDockerEngineApi != null) {
      host_docker_engine_api = hostDockerEngineApi;
    }
  }

  Future<WebSocketClient> attachViaWebsocket({
    required String containerId,
    required Future<void> Function(dynamic data) onSocketData,
    required FutureOr<void> Function(SocketConnection socketConnection) onSocketConnection,
    Uri? hostDockerEngineApi,
  }) async {
    hostDockerEngineApi ??= host_docker_engine_api;

    WebSocketClient ws = WebSocketClient(
      hostDockerEngineApi.replace(
        scheme: hostDockerEngineApi.scheme.replaceAll(RegExp("http", caseSensitive: false), "ws"),
        path: "containers/${containerId}/attach/ws",
        queryParameters: {
          "logs": "true",
          "stream": "true",
          'stdin': 'true',
          'stdout': 'true',
          'stderr': 'true',
        },
      ).toString(),
    );

    await ws.connect(
      onSocketData: onSocketData,
      onSocketConnection: onSocketConnection,
    );
    return ws;
  }
}

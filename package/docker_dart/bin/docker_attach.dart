 
import 'dart:io';
import 'dart:typed_data';

import 'package:docker_dart/docker_dart_core.dart';
import 'package:docker_dart/docker_engine_api/docker_engine_api.dart';
import 'package:general_lib/general_lib.dart';

void main() async {
  Docker docker = Docker(); 
  String container_id = "c4d5be73a4f60eafed8c376e2d550dee60be63b2c9c45db5207bd18c35a8c5bc";

  DockerEngineApi dockerEngineApi = docker.engine_api();

  WebSocketClient ws = await dockerEngineApi.attachViaWebsocket(
    containerId: container_id,
    onSocketConnection: (socketConnection) {},
    onSocketData: (data) async {
      if (data is List<int> || data is Uint8List) {
        stdout.add(data);
      }
    },
  );

  stdin.listen((event) async {
    await ws.send(value: event);
  });

  // WebSocketClient ws = WebSocketClient(
  //   uri_host_docker.replace(
  //     scheme: "ws",
  //     path: "containers/${container_id}/attach/ws",
  //     queryParameters: {
  //       "logs": "true",
  //       "stream": "true",
  //       'stdin': 'true',
  //       'stdout': 'true',
  //       'stderr': 'true',
  //     },
  //   ).toString(),
  // );

  // await ws.connect(
  //   onSocketData: (data) async {
  //     if (data is List<int>) {
  //       stdout.add(data);
  //     }
  //   },
  //   onSocketConnection: (socketConnection) async {
  //     print(socketConnection);
  //     if (socketConnection.status == "connected") {
  //       print("send");
  //       // await ws.send(value: utf8.encode("ls\n"));
  //       print("ok");
  //     }
  //   },
  // );
  // stdin.listen((event) async {
  //   await ws.send(value: event);
  // });
}

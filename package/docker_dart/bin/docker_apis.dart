import 'dart:convert';

import 'package:general_lib/general_lib.dart';
import 'package:http/http.dart';

void main(List<String> args) async {
  Uri uri_host_docker = Uri.parse("http://0.0.0.0:2375/");
  String container_id = "c4d5be73a4f60eafed8c376e2d550dee60be63b2c9c45db5207bd18c35a8c5bc";
  Map<String, String> headers = {
    "Accept": "*/*",
    "Content-Type": "application/json",
  };
  var exec_create = await post(
    uri_host_docker.replace(
      path: "containers/${container_id}/exec",
    ),
    headers: headers,
    body: json.encode(
      {
        "Privileged": true,
        "AttachStdin": true,
        "AttachStdout": true,
        "AttachStderr": true,
        "DetachKeys": "ctrl-p,ctrl-q",
        "Tty": true,
        "WorkingDir": "/app",
        "Cmd": [
          "neofetch", 
        ],
      },
    ),
  );

  exec_create.printPretty();

  print(exec_create.statusCode);
  String exec_id = (json.decode(exec_create.body) as Map)["Id"];
  var exec_start = await post(
    uri_host_docker.replace(
      path: "/exec/${exec_id}/start",
    ),
    headers: headers,
  );

  exec_start.printPretty();
  exec_start.statusCode.printPretty();
  var exec_inspect = await get(
    uri_host_docker.replace(
      path: "/exec/${exec_id}/json",
    ),
    headers: headers,
  );

  exec_inspect.printPretty();
  exec_inspect.statusCode.printPretty();
  exec_inspect.body.printPretty();
}

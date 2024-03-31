// ignore_for_file: unused_import, dead_code

import 'dart:convert';
import 'dart:io';

import 'package:docker_dart/docker_cli/docker_dart_core.dart';
import 'package:docker_dart/docker_dart.dart';
import 'package:docker_dart/docker_engine_api/docker_engine_api.dart';
import 'package:general_lib/general_lib.dart';

void main(List<String> args) async {
  // print("START");
  Docker docker = Docker();

  DockerEngineApi dockerEngineApi = docker.engine_api();
  Map resa = await dockerEngineApi.invoke(
    path_method: "/containers/json",
    queryParameters: {
      // "limit": "1",
      "filters": json.encode({
        "name": <String>[RegExp(r"^(.*-bot-api)$", caseSensitive: false).pattern]
      })
    }
  );
  resa.printPretty();
  exit(0);
//   DockerCli dockerCli = docker.cli();
//   // ContainerDatas containerDatas = await docker.getContainers();
//   // for (var element in containerDatas.containers) {
//   //   element.toJson().printPretty();
// // }
//   //
//   var res = await dockerCli.getContainers(
//       // name: "gnrl_api",
//       // options: [
//       //   "--network",
//       //   "host",
//       //   "--restart",
//       //   "always",
//       //   "-v",
//       //   "${Directory("/home/galaxeus/Documents/galaxeus/app/docker/package/docker_dart/temp/general_api").path}:/app",
//       //   "-v",
//       //   "/usr:/usr",
//       // ],
//       // workingDirectory: Directory("/home/galaxeus/Documents/galaxeus/app/docker/package/docker_dart/temp/general_api").path,
//       );
//   // print(res);
//   //
//   //
//   //
//   print(json.encode(res.rawData));
//   exit(0);

  // List<String> images_ids = [];
  // for (var element in res.images) {
  //   if (element.repository == "<none>") {
  //     images_ids.add(element.image_id ?? "");
  //   }
  // }
  // // var dlete = await docker.deleteImageByIds(image_ids: images_ids);
  // // print(dlete);
  // // for (var element in res.images) {
  // //   if (element.repository == "<none>") {
  // //   }
  // // }
  // // print(res);
  // print(res.toJson().toStringifyPretty());
  // // print((await docker.utils_procces_toString(process: res)));
  // // res.stderr.listen((event) {
  // //   stderr.add(event);
  // // });

  // // res.stdout.listen((event) {
  // //   stdout.add(event);
  // // });

  // // var res = await docker.restartContainer(name: "telegram-bot-api");

  // // print(res);
  // // print(containerDatas.containers.forEach((element) {}).first.toJson().toStringifyPretty());
  // // ContainerData containerData = await docker.getContainerByName(name: "telegram-bot");

  // // print((await docker.test()).toStringifyPretty());
}

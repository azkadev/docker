// ignore_for_file: unused_local_variable


import 'package:docker_dart/docker_cli/docker_dart_core.dart';
import 'package:docker_dart/docker_engine_api/docker_engine_api.dart';

class Docker {

  DockerEngineApi engine_api({

    Uri? hostDockerEngineApi,
  }) {
    return DockerEngineApi(
      hostDockerEngineApi: hostDockerEngineApi,
    );
  }

  DockerEngineCli engine_cli({
    bool isPrivilage = false,
  }) {
    return DockerEngineCli(isPrivilage: isPrivilage);
  }

}

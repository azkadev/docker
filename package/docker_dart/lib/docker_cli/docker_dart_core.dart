// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'dart:io';

import 'package:docker_dart/scheme/scheme.dart';

class DockerCli {
  late bool is_privilage;
  DockerCli({
    bool isPrivilage = false,
  }) {
    is_privilage = isPrivilage;
  }

  Future<String> io_run({
    required List<String> arguments,
    bool isPrivilage = false,
    String? workingDirectory,
    Map<String, String>? environment,
    bool includeParentEnvironment = true,
    bool runInShell = false,
    Encoding? stdoutEncoding = systemEncoding,
    Encoding? stderrEncoding = systemEncoding,
  }) async {
    if (isPrivilage) {
      arguments.insert(0, "docker");
    }
    var res = await Process.run(
      (isPrivilage) ? "sudo" : "docker",
      arguments,
      workingDirectory: workingDirectory,
      environment: environment,
      includeParentEnvironment: includeParentEnvironment,
      runInShell: runInShell,
      stderrEncoding: stderrEncoding,
      stdoutEncoding: stdoutEncoding,
    );
    if (res.exitCode == 1) {
      return res.stderr.toString().trim();
    }
    return res.stdout.toString().trim();
  }

  Future<Process> io_start({
    required List<String> arguments,
    bool isPrivilage = false,
    String? workingDirectory,
    Map<String, String>? environment,
    bool includeParentEnvironment = true,
    bool runInShell = false,
    ProcessStartMode mode = ProcessStartMode.normal,
  }) async {
    arguments.insert(0, "docker");
    var res = await Process.start(
      (isPrivilage) ? "sudo" : "docker",
      arguments,
      workingDirectory: workingDirectory,
      environment: environment,
      includeParentEnvironment: includeParentEnvironment,
      runInShell: runInShell,
      mode: mode,
    );
    return res;
  }

  Map utils_list_to_Map({
    required String type_name,
    required List<String> keys,
    required List<String> values,
  }) {
    Map new_data = <dynamic, dynamic>{
      "@type": type_name,
    };
    for (var index = 0; index < keys.length; index++) {
      String key_name = (keys[index]).toLowerCase().replaceAll(RegExp(r"([ ]+)", caseSensitive: false), "_").replaceAll(RegExp(r"(%)", caseSensitive: false), "percent").replaceAll(RegExp(r"(\/)", caseSensitive: false), "").replaceAll(RegExp(r"(__)", caseSensitive: false), "_");
      new_data[key_name] = values[index];
    }
    return new_data;
  }

  Future<String> utils_procces_toString({
    required Process process,
  }) async {
    String stderr_data = (await process.stderr.toList()).map((e) => utf8.decode(e)).join("").trim();

    String stdeout_data = (await process.stdout.toList()).map((e) => utf8.decode(e)).join("").trim();
    if (stderr_data.isNotEmpty) {
      return stderr_data;
    }

    if (stdeout_data.isNotEmpty) {
      return stdeout_data;
    }
    return "";
  }

  Future<Process> buildContainerRaw({
    required String name,
    List<String>? options,
    String? pathToDockerCliFile,
    String? workingDirectory,
  }) async {
    options ??= [];
    List<String> arguments = [
      "build",
      ...options,
      "-t",
      name,
    ];

    if (pathToDockerCliFile != null && pathToDockerCliFile.isNotEmpty) {
      arguments.add("--file");
      arguments.add(pathToDockerCliFile);
    }

    arguments.add(".");
    return await io_start(
      arguments: arguments,
      isPrivilage: true,
      workingDirectory: workingDirectory,
    );
  }

  Future<BuildContainerData> buildContainer({
    required String name,
    List<String>? options,
    String? pathToDockerCliFile,
    String? workingDirectory,
  }) async {
    var res = await buildContainerRaw(
      name: name,
      options: options,
      pathToDockerCliFile: pathToDockerCliFile,
      workingDirectory: workingDirectory,
    );
    String data_procces = await utils_procces_toString(process: res);
    int exitCode = await res.exitCode;

    if (exitCode == 0) {
      return BuildContainerData.create(
        message: data_procces,
      );
    } else {
      return BuildContainerData({
        "@type": "error",
        "message": "container_build_error",
        "description": data_procces,
      });
    }
  }

  Future<Ok> deleteContainerRaw({
    required List<String> names,
    bool force = true,
  }) async {
    List<String> arguments = [
      "rm",
      ...names,
    ];

    if (force) {
      arguments.insert(1, "-f");
    }

    var res = await io_run(
      arguments: arguments,
      isPrivilage: true,
    );

    if (RegExp("error", caseSensitive: false).hasMatch(res) || res.isEmpty) {
      return Ok.create(
        special_type: "error",
        message: "container_delete_error",
        description: res,
      );
    }
    return Ok.create(
      description: res,
    );
  }

  Future<Ok> deleteContainer({
    required String name,
    bool force = true,
  }) async {
    ContainerData containerData = await getContainerByName(name: name);
    if (containerData["@type"] != "containerData") {
      return Ok({
        "@type": "error",
        "message": "container_not_found",
        "description": "Container not found",
      });
    }

    return await deleteContainerRaw(
      names: [name],
      force: force,
    );
  }



  Future<Ok> deleteContainers({
    required List<String> names,
    bool force = true,
  }) async {
    

    return await deleteContainerRaw(
      names: names,
      force: force,
    );
  }
  Future<DeletedImageData> deleteImageById({
    required String image_id,
    bool force = true,
  }) async {
    ImageData imageData = await getImageById(
      image_id: image_id,
    );
    if (imageData["@type"] != "imageData") {
      return DeletedImageData({
        "@type": "error",
        "message": "image_not_found",
        "description": "Image not found",
      });
    }
    List<String> arguments = [
      "image",
      "rm",
      image_id,
    ];

    if (force) {
      arguments.insert(2, "-f");
    }

    var res = await io_run(
      arguments: arguments,
      isPrivilage: true,
    );

    return DeletedImageData.create(
      message: res,
    );
  }

  Future<DeletedImageData> deleteImageByIds({
    required List<String> image_ids,
    bool force = true,
  }) async {
    List<String> arguments = [
      "image",
      "rm",
    ];

    arguments.addAll(image_ids);

    if (force) {
      arguments.insert(2, "-f");
    }

    var res = await io_run(
      arguments: arguments,
      isPrivilage: true,
    );

    return DeletedImageData.create(
      message: res,
    );
  }

  Future<Ok> restartContainer({
    required String name,
  }) async {
    ContainerData containerData = await getContainerByName(name: name);
    if (containerData["@type"] != "containerData") {
      return Ok({
        "@type": "error",
        "message": "container_not_found",
        "description": "Container not found",
      });
    }
    List<String> arguments = [
      "restart",
      name,
    ];

    var res = await io_run(
      arguments: arguments,
      isPrivilage: true,
    );

    return Ok({"@type": "ok"});
  }

  Future<Ok> updateContainer({
    required String name,
    required List<String> options,
  }) async {
    ContainerData containerData = await getContainerByName(name: name);
    if (containerData["@type"] != "containerData") {
      return Ok({
        "@type": "error",
        "message": "container_not_found",
        "description": "Container not found",
      });
    }
    List<String> arguments = [
      "update",
      ...options,
      name,
    ];

    var res = await io_run(
      arguments: arguments,
      isPrivilage: true,
    );

    return Ok({"@type": "ok"});
  }

  Future<Process> runContainerRaw({
    required String name,
    List<String>? options,
    String? workingDirectory,
  }) async {
    options ??= [];
    List<String> arguments = [
      "run",
      "--name",
      name,
      ...options,
      name,
    ];

    var res = await io_start(arguments: arguments, isPrivilage: true, workingDirectory: workingDirectory);
    return res;
  }

  Future<RunContainerData> runContainer({
    required String name,
    List<String>? options,
    String? workingDirectory,
  }) async {
    options ??= [
      "--detach",
    ];

    if ((options.contains("--detach") || options.contains("-d")) == false) {
      options.add("--detach");
    }
    var res = await runContainerRaw(name: name, options: options, workingDirectory: workingDirectory);
    String data_procces = await utils_procces_toString(process: res);
    int exitCode = await res.exitCode;

    if (exitCode == 0) {
      return RunContainerData.create(
        message: data_procces,
      );
    } else {
      return RunContainerData({
        "@type": "error",
        "message": "container_run_error",
        "description": data_procces,
      });
    }
  }

  Future<Ok> killContainer({
    required String name,
  }) async {
    ContainerData containerData = await getContainerByName(name: name);
    if (containerData["@type"] != "containerData") {
      return Ok({
        "@type": "error",
        "message": "container_not_found",
        "description": "Container not found",
      });
    }
    List<String> arguments = [
      "kill",
      name,
    ];

    var res = await io_run(
      arguments: arguments,
      isPrivilage: true,
    );
    return Ok({"@type": "ok"});
  }

  Future<Ok> pauseContainer({
    required String name,
  }) async {
    ContainerData containerData = await getContainerByName(name: name);
    if (containerData["@type"] != "containerData") {
      return Ok({
        "@type": "error",
        "message": "container_not_found",
        "description": "Container not found",
      });
    }
    List<String> arguments = [
      "pause",
      name,
    ];

    var res = await io_run(
      arguments: arguments,
      isPrivilage: true,
    );
    return Ok({"@type": "ok"});
  }

  Future<Ok> unPauseContainer({
    required String name,
  }) async {
    ContainerData containerData = await getContainerByName(name: name);
    if (containerData["@type"] != "containerData") {
      return Ok({
        "@type": "error",
        "message": "container_not_found",
        "description": "Container not found",
      });
    }
    List<String> arguments = [
      "unpause",
      name,
    ];

    var res = await io_run(
      arguments: arguments,
      isPrivilage: true,
    );
    return Ok({"@type": "ok"});
  }

  Future<Ok> stopContainer({
    required String name,
  }) async {
    ContainerData containerData = await getContainerByName(name: name);
    if (containerData["@type"] != "containerData") {
      return Ok({
        "@type": "error",
        "message": "container_not_found",
        "description": "Container not found",
      });
    }
    List<String> arguments = [
      "stop",
      name,
    ];

    var res = await io_run(
      arguments: arguments,
      isPrivilage: true,
    );
    return Ok({"@type": "ok"});
  }

  Future<ContainerDatas> getContainers({
    bool include_container_stopped = true,
  }) async {
    List<String> arguments = [
      "container",
      "ls",
      "--format",
      "table {{.ID}}|{{.Image}}|{{.Names}}|{{.Command}}|{{.CreatedAt}}|{{.Labels}}|{{.LocalVolumes}}|{{.Mounts}}|{{.Networks}}|{{.Ports}}|{{.RunningFor}}|{{.Size}}|{{.State}}|{{.Status}}",
    ];
    if (include_container_stopped) {
      arguments.add('--all');
    }
    // CONTAINER ID|IMAGE|CREATED AT|STATUS|PORTS|NAMES
    // 7e30a4558907|general_api|2023-11-07 12:20:14 +0700 WIB|Up 31 hours||general_api
    // 9373c91634d9|telegram-bot-api|2023-11-07 12:19:50 +0700 WIB|Up 31 hours||telegram-bot-api
    List<String> result_raw = (await io_run(
      arguments: arguments,
      isPrivilage: true,
    ))
        .split("\n");

    List<ContainerData> containers = [];
    List<String> key_names = result_raw.first.split("|");

    result_raw.removeWhere((element) => result_raw.first == element);
    for (var i = 0; i < result_raw.length; i++) {
      List<String> result_raw_data = (result_raw[i]).split("|");

      containers.add(ContainerData(
        utils_list_to_Map(
          type_name: "containerData",
          keys: key_names,
          values: result_raw_data,
        ),
      ));
    }
    return ContainerDatas.create(
      count: containers.length,
      containers: containers,
    );
  }

  Future<ContainerData> getContainerByName({
    required String name,
  }) async {
    ContainerDatas containerDatas = await getContainers();
    return containerDatas.containers.singleWhere(
      (element) => element.names == name,
      orElse: () {
        return ContainerData({"@type": "error", "message": "container_not_found", "description": "Container Not Found"});
      },
    );
  }

  Future<VolumeDatas> getVolumes() async {
    List<String> arguments = [
      "volume",
      "ls",
      "--format",
      "table {{.Name}}|{{.Driver}}|{{.Mountpoint}}|{{.Labels}}|{{.Scope}}",
    ];

    List<String> result_raw = (await io_run(
      arguments: arguments,
      isPrivilage: true,
    ))
        .split("\n");

    List<VolumeData> volumes = [];
    List<String> key_names = result_raw.first.split("|");

    result_raw.removeWhere((element) => result_raw.first == element);
    for (var i = 0; i < result_raw.length; i++) {
      List<String> result_raw_data = (result_raw[i]).split("|");

      volumes.add(
        VolumeData(utils_list_to_Map(
          type_name: "volumeData",
          keys: key_names,
          values: result_raw_data,
        )),
      );
    }
    return VolumeDatas({
      "@type": "volumeDatas",
      "count": volumes.length,
      "volumes": volumes,
    });
  }

  Future<VolumeData> getVolumeByName({
    required String name,
  }) async {
    VolumeDatas volumeDatas = await getVolumes();
    return volumeDatas.volumes.singleWhere(
      (element) => element.volume_name == name,
      orElse: () {
        return VolumeData({"@type": "error", "message": "volume_not_found", "description": "Volume Not Found"});
      },
    );
  }

  Future<String> getDockerCliVersion() async {
    List<String> arguments = [
      "--version",
    ];

    return (await io_run(
      arguments: arguments,
      isPrivilage: true,
    ));
  }

  Future<ImageDatas> getImages() async {
    List<String> arguments = [
      "images",
      "--format",
      "table {{.ID}}|{{.Containers}}|{{.CreatedAt}}|{{.CreatedSince}}|{{.Digest}}|{{.Repository}}|{{.SharedSize}}|{{.Size}}|{{.Tag}}|{{.UniqueSize}}|{{.VirtualSize}}",
    ];

    List<String> result_raw = (await io_run(
      arguments: arguments,
      isPrivilage: true,
    ))
        .split("\n");

    List<ImageData> images = [];
    List<String> key_names = result_raw.first.split("|");

    result_raw.removeWhere((element) => result_raw.first == element);
    for (var i = 0; i < result_raw.length; i++) {
      List<String> result_raw_data = (result_raw[i]).split("|");

      images.add(
        ImageData(utils_list_to_Map(
          type_name: "imageData",
          keys: key_names,
          values: result_raw_data,
        )),
      );
    }
    return ImageDatas.create(count: images.length, images: images);
  }

  Future<ImageData> getImageById({
    required String image_id,
  }) async {
    ImageDatas imageDatas = await getImages();
    return imageDatas.images.singleWhere(
      (element) => element.image_id == image_id,
      orElse: () {
        return ImageData({"@type": "error", "message": "image_not_found", "description": "Image Not Found"});
      },
    );
  }

  Future<ContainerStatsDatas> getStatsContainers() async {
    List<String> arguments = [
      "container",
      "stats",
      "--format",
      "table {{.ID}}|{{.Name}}|{{.Container}}|{{.BlockIO}}|{{.CPUPerc}}|{{.MemPerc}}|{{.MemUsage}}|{{.NetIO}}|{{.PIDs}}",
      "--no-stream",
    ];
    // CONTAINER ID|IMAGE|CREATED AT|STATUS|PORTS|NAMES
    // 7e30a4558907|general_api|2023-11-07 12:20:14 +0700 WIB|Up 31 hours||general_api
    // 9373c91634d9|telegram-bot-api|2023-11-07 12:19:50 +0700 WIB|Up 31 hours||telegram-bot-api
    List<String> result_raw = (await io_run(
      arguments: arguments,
      isPrivilage: true,
    ))
        .split("\n");

    List<ContainerStatsData> containers_stats = [];
    List<String> key_names = result_raw.first.split("|");

    result_raw.removeWhere((element) => result_raw.first == element);
    for (var i = 0; i < result_raw.length; i++) {
      List<String> result_raw_data = (result_raw[i]).split("|");

      containers_stats.add(ContainerStatsData(
        utils_list_to_Map(
          type_name: "containerStatsData",
          keys: key_names,
          values: result_raw_data,
        ),
      ));
    }
    return ContainerStatsDatas.create(
      count: containers_stats.length,
      containers_stats: containers_stats,
    );
  }

  Future<ContainerStatsData> getStatsContainerByName({
    required String name,
  }) async {
    ContainerStatsDatas containerStatsDatas = await getStatsContainers();
    return containerStatsDatas.containers_stats.singleWhere(
      (element) => element.name == name,
      orElse: () {
        return ContainerStatsData({"@type": "error", "message": "container_not_found", "description": "Container Not Found"});
      },
    );
  }

  Future<NetworkDatas> getNetworks() async {
    List<String> arguments = [
      "network",
      "ls",
      "--format",
      "table {{.ID}}|{{.Name}}|{{.CreatedAt}}|{{.Driver}}|{{.IPv6}}|{{.Internal}}|{{.Labels}}|{{.Scope}}",
    ];

    List<String> result_raw = (await io_run(
      arguments: arguments,
      isPrivilage: true,
    ))
        .split("\n");

    List<NetworkData> networkDatas = [];
    List<String> key_names = result_raw.first.split("|");

    result_raw.removeWhere((element) => result_raw.first == element);
    for (var i = 0; i < result_raw.length; i++) {
      List<String> result_raw_data = (result_raw[i]).split("|");

      networkDatas.add(
        NetworkData(utils_list_to_Map(
          type_name: "networkData",
          keys: key_names,
          values: result_raw_data,
        )),
      );
    }
    return NetworkDatas.create(count: networkDatas.length, networks: networkDatas);
  }

  Future<List> inspectContainerByNameRaw({required String name}) async {
    // sudo docker container inspect blender_space --format json
    List<String> arguments = [
      "container",
      "inspect",
      name,
      "--format",
      "json",
    ];

    String result_raw = (await io_run(
      arguments: arguments,
      isPrivilage: true,
    ));

    return (json.decode(result_raw) as List);
  }

  Future<Ok> createNetwork({
    required String name,
    required List<String> options,
  }) async {
    List<String> arguments = [
      "network",
      "create",
      ...options,
      name,
    ];
    var res = await io_run(
      arguments: arguments,
      isPrivilage: true,
    );
    if (RegExp("error", caseSensitive: false).hasMatch(res)) {
      return Ok.create(
        special_type: "error",
        message: "network_create_error",
        description: res,
      );
    }
    return Ok.create(
      description: res,
    );
  }

  Future<Ok> deleteNetworkRaw({
    required List<String> networks,
    bool force = true,
  }) async {
    List<String> options = [];
    if (force) {
      options.add("--force");
    }
    List<String> arguments = [
      "network",
      "rm",
      ...options,
    ];

    arguments.addAll(networks);
    var res = await io_run(
      arguments: arguments,
      isPrivilage: true,
    );
    if (RegExp("error", caseSensitive: false).hasMatch(res) || res.isEmpty) {
      return Ok.create(
        special_type: "error",
        message: "network_delete_error",
        description: res,
      );
    }
    return Ok.create(
      description: res,
    );
  }

  Future<Ok> deleteNetwork({
    required String network,
    bool force = true,
  }) async {
    return await deleteNetworkRaw(networks: [network], force: force);
  }

  Future<Ok> deleteNetworks({
    required List<String> networks,
    bool force = true,
  }) async {
    return await deleteNetworkRaw(networks: networks, force: force);
  }

  Future<List> inspectNetworkRaw({
    required String name,
  }) async {
    List<String> arguments = [
      "network",
      "inspect",
      name,
      "--format",
      "json",
    ];

    String result_raw = (await io_run(
      arguments: arguments,
      isPrivilage: true,
    ));

    return (json.decode(result_raw) as List);
  }

  Future<Map> test() async {
    // sudo docker container inspect blender_space --format json
    List<String> arguments = ["container", "inspect", "blender_space", "--format", "json"];

    List<String> result_raw = (await io_run(
      arguments: arguments,
      isPrivilage: true,
    ))
        .split("\n");

    List<Map> volumes = [];
    List<String> key_names = result_raw.first.split("|");

    result_raw.removeWhere((element) => result_raw.first == element);
    for (var i = 0; i < result_raw.length; i++) {
      List<String> result_raw_data = (result_raw[i]).split("|");

      volumes.add(
        utils_list_to_Map(
          type_name: "imageData",
          keys: key_names,
          values: result_raw_data,
        ),
      );
    }
    return {
      "@type": "imageDatas",
      "count": volumes.length,
      "volumes": volumes,
    };
  }
}

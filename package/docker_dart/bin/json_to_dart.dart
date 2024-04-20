import 'dart:io';

import 'package:general_lib/general_lib.dart';
import 'package:path/path.dart';

void main(List<String> args) {
  jsonToScripts([
    {
      "@type": "version",
      "Platform": {
        "@type": "versionPlatform",
        "Name": "Docker Engine - Community",
      },
      "Components": [
        {
          "Name": "Engine",
          "Version": "25.0.3",
          "Details": {"ApiVersion": "1.44", "Arch": "amd64", "BuildTime": "2024-02-06T21:14:22.000000000+00:00", "Experimental": "false", "GitCommit": "f417435", "GoVersion": "go1.21.6", "KernelVersion": "6.5.0-25-generic", "MinAPIVersion": "1.24", "Os": "linux"}
        },
        {
          "Name": "containerd",
          "Version": "1.6.28",
          "Details": {"GitCommit": "ae07eda36dd25f8a1b98dfbf587313b99c0190bb"}
        },
        {
          "Name": "runc",
          "Version": "1.1.12",
          "Details": {"GitCommit": "v1.1.12-0-g51d5e94"}
        },
        {
          "Name": "docker-init",
          "Version": "0.19.0",
          "Details": {"GitCommit": "de40ad0"}
        }
      ],
      "Version": "25.0.3",
      "ApiVersion": "1.44",
      "MinAPIVersion": "1.24",
      "GitCommit": "f417435",
      "GoVersion": "go1.21.6",
      "Os": "linux",
      "Arch": "amd64",
      "KernelVersion": "6.5.0-25-generic",
      "BuildTime": "2024-02-06T21:14:22.000000000+00:00"
    },
  ], directory: Directory(join(Directory.current.path, "slebew")));
}

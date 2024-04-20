import 'dart:io';

import 'package:general_lib/general_lib.dart';
import 'package:path/path.dart';

void main(List<String> args) async {
  List<Map> schemes = [
    {
      "@type": "error",
      "message": "",
      "description": "",
    },
    {
      "@type": "ok",
      "message": "",
      "description": "",
    },
    {"@type": "containerData", "container_id": "9373c91634d9", "image": "telegram-bot-api", "names": "telegram-bot-api", "command": "\"telegram-bot-api --…\"", "created_at": "2023-11-07 12:19:50 +0700 WIB", "labels": "org.opencontainers.image.version=22.04,org.opencontainers.image.ref.name=ubuntu", "local_volumes": "0", "mounts": "/home/galaxeus…,/usr", "networks": "host", "ports": "", "created": "2 weeks ago", "size": "0B (virtual 77.9MB)", "state": "running", "status": "Up 7 hours"},
    {
      "@type": "containerDatas",
      "count": 0,
      "containers": [
        {"@type": "containerData", "container_id": "9373c91634d9", "image": "telegram-bot-api", "names": "telegram-bot-api", "command": "\"telegram-bot-api --…\"", "created_at": "2023-11-07 12:19:50 +0700 WIB", "labels": "org.opencontainers.image.version=22.04,org.opencontainers.image.ref.name=ubuntu", "local_volumes": "0", "mounts": "/home/galaxeus…,/usr", "networks": "host", "ports": "", "created": "2 weeks ago", "size": "0B (virtual 77.9MB)", "state": "running", "status": "Up 7 hours"},
      ]
    },
    {
      "@type": "volumeData",
      "volume_name": "VOLUME NAME",
      "driver": "DRIVER",
      "mountpoint": "MOUNTPOINT",
      "labels": "LABELS",
      "scope": "SCOPE",
    },
    {
      "@type": "volumeDatas",
      "count": 1,
      "volumes": [
        {"@type": "volumeData", "volume_name": "VOLUME NAME", "driver": "DRIVER", "mountpoint": "MOUNTPOINT", "labels": "LABELS", "scope": "SCOPE"}
      ]
    },
    {"@type": "imageData", "image_id": "IMAGE ID", "containers": "CONTAINERS", "created_at": "CREATED AT", "created": "CREATED", "digest": "DIGEST", "repository": "REPOSITORY", "shared_size": "SHARED SIZE", "size": "SIZE", "tag": "TAG", "unique_size": "UNIQUE SIZE"},
    {
      "@type": "imageDatas",
      "count": 47,
      "images": [
        {"@type": "imageData", "image_id": "IMAGE ID", "containers": "CONTAINERS", "created_at": "CREATED AT", "created": "CREATED", "digest": "DIGEST", "repository": "REPOSITORY", "shared_size": "SHARED SIZE", "size": "SIZE", "tag": "TAG", "unique_size": "UNIQUE SIZE"},
      ],
    },
    {
      "@type": "buildContainerData",
      "message": "",
    },
    {
      "@type": "runContainerData",
      "message": "",
    },
    {
      "@type": "deletedImageData",
      "message": "",
    },
    {"@type": "containerStatsData", "container_id": "a000ae808918", "name": "gnrl_api", "container": "a000ae808918", "block_io": "406kB / 0B", "cpu_percent": "0.01%", "mem_percent": "0.09%", "mem_usage_limit": "6.875MiB / 7.116GiB", "net_io": "0B / 0B", "pids": "15"},
    {
      "@type": "containerStatsDatas",
      "count": 3,
      "containers_stats": [
        {"@type": "containerStatsData", "container_id": "a000ae808918", "name": "gnrl_api", "container": "a000ae808918", "block_io": "406kB / 0B", "cpu_percent": "0.01%", "mem_percent": "0.09%", "mem_usage_limit": "6.875MiB / 7.116GiB", "net_io": "0B / 0B", "pids": "15"},
      ],
    },
    {
      "@type": "networkData",
      "network_id": "NETWORK ID",
      "name": "NAME",
      "created_at": "CREATED AT",
      "driver": "DRIVER",
      "ipv6": "IPV6",
      "internal": "INTERNAL",
      "labels": "LABELS",
      "scope": "SCOPE",
    },
    {
      "@type": "networkDatas",
      "count": 6,
      "networks": [
        {
          "@type": "networkData",
          "network_id": "NETWORK ID",
          "name": "NAME",
          "created_at": "CREATED AT",
          "driver": "DRIVER",
          "ipv6": "IPV6",
          "internal": "INTERNAL",
          "labels": "LABELS",
          "scope": "SCOPE",
        },
      ],
    },
  ];

  await jsonToScripts(schemes, directory: Directory(join(Directory.current.path, "lib", "docker_cli", "scheme")));
}

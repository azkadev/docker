// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class ContainerData extends JsonScheme {

  
  ContainerData(super.rawData);
   
  static Map get defaultData {
    return {"@type":"containerData","container_id":"9373c91634d9","image":"telegram-bot-api","names":"telegram-bot-api","command":"\"telegram-bot-api --…\"","created_at":"2023-11-07 12:19:50 +0700 WIB","labels":"org.opencontainers.image.version=22.04,org.opencontainers.image.ref.name=ubuntu","local_volumes":"0","mounts":"/home/galaxeus…,/usr","networks":"host","ports":"","created":"2 weeks ago","size":"0B (virtual 77.9MB)","state":"running","status":"Up 7 hours"};
  }

  
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get container_id {
    try {
      if (rawData["container_id"] is String == false){
        return null;
      }
      return rawData["container_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get image {
    try {
      if (rawData["image"] is String == false){
        return null;
      }
      return rawData["image"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get names {
    try {
      if (rawData["names"] is String == false){
        return null;
      }
      return rawData["names"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get command {
    try {
      if (rawData["command"] is String == false){
        return null;
      }
      return rawData["command"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get created_at {
    try {
      if (rawData["created_at"] is String == false){
        return null;
      }
      return rawData["created_at"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get labels {
    try {
      if (rawData["labels"] is String == false){
        return null;
      }
      return rawData["labels"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get local_volumes {
    try {
      if (rawData["local_volumes"] is String == false){
        return null;
      }
      return rawData["local_volumes"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get mounts {
    try {
      if (rawData["mounts"] is String == false){
        return null;
      }
      return rawData["mounts"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get networks {
    try {
      if (rawData["networks"] is String == false){
        return null;
      }
      return rawData["networks"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get ports {
    try {
      if (rawData["ports"] is String == false){
        return null;
      }
      return rawData["ports"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get created {
    try {
      if (rawData["created"] is String == false){
        return null;
      }
      return rawData["created"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get size {
    try {
      if (rawData["size"] is String == false){
        return null;
      }
      return rawData["size"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get state {
    try {
      if (rawData["state"] is String == false){
        return null;
      }
      return rawData["state"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get status {
    try {
      if (rawData["status"] is String == false){
        return null;
      }
      return rawData["status"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static ContainerData create({

    String special_type = "containerData",
    String? container_id,
    String? image,
    String? names,
    String? command,
    String? created_at,
    String? labels,
    String? local_volumes,
    String? mounts,
    String? networks,
    String? ports,
    String? created,
    String? size,
    String? state,
    String? status,
})  {
    // ContainerData containerData = ContainerData({
Map containerData_data_create_json = {
  
      "@type": special_type,
      "container_id": container_id,
      "image": image,
      "names": names,
      "command": command,
      "created_at": created_at,
      "labels": labels,
      "local_volumes": local_volumes,
      "mounts": mounts,
      "networks": networks,
      "ports": ports,
      "created": created,
      "size": size,
      "state": state,
      "status": status,


};


          containerData_data_create_json.removeWhere((key, value) => value == null);
ContainerData containerData_data_create = ContainerData(containerData_data_create_json);

return containerData_data_create;



      }
}
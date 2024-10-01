// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class ContainerData extends JsonScheme {

  
  ContainerData(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"containerData","container_id":"9373c91634d9","image":"telegram-bot-api","names":"telegram-bot-api","command":"\"telegram-bot-api --…\"","created_at":"2023-11-07 12:19:50 +0700 WIB","labels":"org.opencontainers.image.version=22.04,org.opencontainers.image.ref.name=ubuntu","local_volumes":"0","mounts":"/home/galaxeus…,/usr","networks":"host","ports":"","created":"2 weeks ago","size":"0B (virtual 77.9MB)","state":"running","status":"Up 7 hours"};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == containerData
  /// if same return true
  bool json_scheme_utils_checkDataIsSameBySpecialType() {
    return rawData["@type"] == defaultData["@type"];
  }

  /// check value data whatever do yout want
  bool json_scheme_utils_checkDataIsSameBuilder({
    required bool Function(Map rawData, Map defaultData) onResult,
  }) {
    return onResult(rawData["@type"], defaultData["@type"]);
  }

  

  /// create [ContainerData]
  /// Empty  
  static ContainerData empty() {
    return ContainerData({});
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

  
  set special_type(String? value) {
    rawData["@type"] = value;
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

  
  set container_id(String? value) {
    rawData["container_id"] = value;
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

  
  set image(String? value) {
    rawData["image"] = value;
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

  
  set names(String? value) {
    rawData["names"] = value;
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

  
  set command(String? value) {
    rawData["command"] = value;
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

  
  set created_at(String? value) {
    rawData["created_at"] = value;
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

  
  set labels(String? value) {
    rawData["labels"] = value;
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

  
  set local_volumes(String? value) {
    rawData["local_volumes"] = value;
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

  
  set mounts(String? value) {
    rawData["mounts"] = value;
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

  
  set networks(String? value) {
    rawData["networks"] = value;
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

  
  set ports(String? value) {
    rawData["ports"] = value;
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

  
  set created(String? value) {
    rawData["created"] = value;
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

  
  set size(String? value) {
    rawData["size"] = value;
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

  
  set state(String? value) {
    rawData["state"] = value;
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

  
  set status(String? value) {
    rawData["status"] = value;
  }


  
  static ContainerData create({
              bool schemeUtilsIsSetDefaultData = false,

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
final Map containerData_data_create_json = {
  
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

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (containerData_data_create_json.containsKey(key) == false) {
          containerData_data_create_json[key] = value;
        }
      });
    }
return ContainerData(containerData_data_create_json);


      }
}
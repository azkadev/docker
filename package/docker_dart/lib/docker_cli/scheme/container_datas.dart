// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "container_data.dart";

 
class ContainerDatas extends JsonScheme {

  
  ContainerDatas(super.rawData);
   
  static Map get defaultData {
    return {"@type":"containerDatas","count":0,"containers":[{"@type":"containerData","container_id":"9373c91634d9","image":"telegram-bot-api","names":"telegram-bot-api","command":"\"telegram-bot-api --…\"","created_at":"2023-11-07 12:19:50 +0700 WIB","labels":"org.opencontainers.image.version=22.04,org.opencontainers.image.ref.name=ubuntu","local_volumes":"0","mounts":"/home/galaxeus…,/usr","networks":"host","ports":"","created":"2 weeks ago","size":"0B (virtual 77.9MB)","state":"running","status":"Up 7 hours"}]};
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


  
  num? get count {
    try {
      if (rawData["count"] is num == false){
        return null;
      }
      return rawData["count"] as num;
    } catch (e) {
      return null;
    }
  }

  
  List<ContainerData> get containers {
    try {
      if (rawData["containers"] is List == false){
        return [];
      }
      return (rawData["containers"] as List).map((e) => ContainerData(e as Map)).toList().cast<ContainerData>();
    } catch (e) {
      return [];
    }
  }


  
  static ContainerDatas create({

    String special_type = "containerDatas",
    num? count,
      List<ContainerData>? containers,
})  {
    // ContainerDatas containerDatas = ContainerDatas({
Map containerDatas_data_create_json = {
  
      "@type": special_type,
      "count": count,
      "containers": (containers != null)? containers.toJson(): null,


};


          containerDatas_data_create_json.removeWhere((key, value) => value == null);
ContainerDatas containerDatas_data_create = ContainerDatas(containerDatas_data_create_json);

return containerDatas_data_create;



      }
}
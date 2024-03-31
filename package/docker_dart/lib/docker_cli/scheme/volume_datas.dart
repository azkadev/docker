// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "volume_data.dart";


class VolumeDatas extends JsonScheme {

  
  VolumeDatas(super.rawData);
   
  static Map get defaultData {
    return {"@type":"volumeDatas","count":1,"volumes":[{"@type":"volumeData","volume_name":"VOLUME NAME","driver":"DRIVER","mountpoint":"MOUNTPOINT","labels":"LABELS","scope":"SCOPE"}]};
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


  
  int? get count {
    try {
      if (rawData["count"] is int == false){
        return null;
      }
      return rawData["count"] as int;
    } catch (e) {
      return null;
    }
  }

  
  List<VolumeData> get volumes {
    try {
      if (rawData["volumes"] is List == false){
        return [];
      }
      return (rawData["volumes"] as List).map((e) => VolumeData(e as Map)).toList().cast<VolumeData>();
    } catch (e) {
      return [];
    }
  }


  
  static VolumeDatas create({

    String special_type = "volumeDatas",
    int? count,
      List<VolumeData>? volumes,
})  {
    // VolumeDatas volumeDatas = VolumeDatas({
Map volumeDatas_data_create_json = {
  
      "@type": special_type,
      "count": count,
      "volumes": (volumes != null)? volumes.toJson(): null,


};


          volumeDatas_data_create_json.removeWhere((key, value) => value == null);
VolumeDatas volumeDatas_data_create = VolumeDatas(volumeDatas_data_create_json);

return volumeDatas_data_create;



      }
}
// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "volume_data.dart";

 
class VolumeDatas extends JsonScheme {

  
  VolumeDatas(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"volumeDatas","count":1,"volumes":[{"@type":"volumeData","volume_name":"VOLUME NAME","driver":"DRIVER","mountpoint":"MOUNTPOINT","labels":"LABELS","scope":"SCOPE"}]};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == volumeDatas
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

  

  /// create [VolumeDatas]
  /// Empty  
  static VolumeDatas empty() {
    return VolumeDatas({});
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

  
  set count(num? value) {
    rawData["count"] = value;
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


  
  set volumes(List<VolumeData> values) {
    rawData["volumes"] = values.map((value) => value.toJson()).toList();
  }



  
  static VolumeDatas create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "volumeDatas",
    num? count,
      List<VolumeData>? volumes,
})  {
    // VolumeDatas volumeDatas = VolumeDatas({
final Map volumeDatas_data_create_json = {
  
      "@type": special_type,
      "count": count,
      "volumes": (volumes != null)? volumes.toJson(): null,


};


          volumeDatas_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (volumeDatas_data_create_json.containsKey(key) == false) {
          volumeDatas_data_create_json[key] = value;
        }
      });
    }
return VolumeDatas(volumeDatas_data_create_json);


      }
}
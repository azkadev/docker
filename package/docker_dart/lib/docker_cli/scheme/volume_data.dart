// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class VolumeData extends JsonScheme {

  
  VolumeData(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"volumeData","volume_name":"VOLUME NAME","driver":"DRIVER","mountpoint":"MOUNTPOINT","labels":"LABELS","scope":"SCOPE"};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == volumeData
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

  

  /// create [VolumeData]
  /// Empty  
  static VolumeData empty() {
    return VolumeData({});
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


  
  String? get volume_name {
    try {
      if (rawData["volume_name"] is String == false){
        return null;
      }
      return rawData["volume_name"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set volume_name(String? value) {
    rawData["volume_name"] = value;
  }


  
  String? get driver {
    try {
      if (rawData["driver"] is String == false){
        return null;
      }
      return rawData["driver"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set driver(String? value) {
    rawData["driver"] = value;
  }


  
  String? get mountpoint {
    try {
      if (rawData["mountpoint"] is String == false){
        return null;
      }
      return rawData["mountpoint"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set mountpoint(String? value) {
    rawData["mountpoint"] = value;
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


  
  String? get scope {
    try {
      if (rawData["scope"] is String == false){
        return null;
      }
      return rawData["scope"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set scope(String? value) {
    rawData["scope"] = value;
  }


  
  static VolumeData create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "volumeData",
    String? volume_name,
    String? driver,
    String? mountpoint,
    String? labels,
    String? scope,
})  {
    // VolumeData volumeData = VolumeData({
final Map volumeData_data_create_json = {
  
      "@type": special_type,
      "volume_name": volume_name,
      "driver": driver,
      "mountpoint": mountpoint,
      "labels": labels,
      "scope": scope,


};


          volumeData_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (volumeData_data_create_json.containsKey(key) == false) {
          volumeData_data_create_json[key] = value;
        }
      });
    }
return VolumeData(volumeData_data_create_json);


      }
}
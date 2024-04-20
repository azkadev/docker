// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class VolumeData extends JsonScheme {

  
  VolumeData(super.rawData);
   
  static Map get defaultData {
    return {"@type":"volumeData","volume_name":"VOLUME NAME","driver":"DRIVER","mountpoint":"MOUNTPOINT","labels":"LABELS","scope":"SCOPE"};
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


  
  static VolumeData create({

    String special_type = "volumeData",
    String? volume_name,
    String? driver,
    String? mountpoint,
    String? labels,
    String? scope,
})  {
    // VolumeData volumeData = VolumeData({
Map volumeData_data_create_json = {
  
      "@type": special_type,
      "volume_name": volume_name,
      "driver": driver,
      "mountpoint": mountpoint,
      "labels": labels,
      "scope": scope,


};


          volumeData_data_create_json.removeWhere((key, value) => value == null);
VolumeData volumeData_data_create = VolumeData(volumeData_data_create_json);

return volumeData_data_create;



      }
}
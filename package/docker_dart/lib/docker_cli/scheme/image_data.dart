// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class ImageData extends JsonScheme {

  
  ImageData(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"imageData","image_id":"IMAGE ID","containers":"CONTAINERS","created_at":"CREATED AT","created":"CREATED","digest":"DIGEST","repository":"REPOSITORY","shared_size":"SHARED SIZE","size":"SIZE","tag":"TAG","unique_size":"UNIQUE SIZE"};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == imageData
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

  

  /// create [ImageData]
  /// Empty  
  static ImageData empty() {
    return ImageData({});
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


  
  String? get image_id {
    try {
      if (rawData["image_id"] is String == false){
        return null;
      }
      return rawData["image_id"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set image_id(String? value) {
    rawData["image_id"] = value;
  }


  
  String? get containers {
    try {
      if (rawData["containers"] is String == false){
        return null;
      }
      return rawData["containers"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set containers(String? value) {
    rawData["containers"] = value;
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


  
  String? get digest {
    try {
      if (rawData["digest"] is String == false){
        return null;
      }
      return rawData["digest"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set digest(String? value) {
    rawData["digest"] = value;
  }


  
  String? get repository {
    try {
      if (rawData["repository"] is String == false){
        return null;
      }
      return rawData["repository"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set repository(String? value) {
    rawData["repository"] = value;
  }


  
  String? get shared_size {
    try {
      if (rawData["shared_size"] is String == false){
        return null;
      }
      return rawData["shared_size"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set shared_size(String? value) {
    rawData["shared_size"] = value;
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


  
  String? get tag {
    try {
      if (rawData["tag"] is String == false){
        return null;
      }
      return rawData["tag"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set tag(String? value) {
    rawData["tag"] = value;
  }


  
  String? get unique_size {
    try {
      if (rawData["unique_size"] is String == false){
        return null;
      }
      return rawData["unique_size"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set unique_size(String? value) {
    rawData["unique_size"] = value;
  }


  
  static ImageData create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "imageData",
    String? image_id,
    String? containers,
    String? created_at,
    String? created,
    String? digest,
    String? repository,
    String? shared_size,
    String? size,
    String? tag,
    String? unique_size,
})  {
    // ImageData imageData = ImageData({
final Map imageData_data_create_json = {
  
      "@type": special_type,
      "image_id": image_id,
      "containers": containers,
      "created_at": created_at,
      "created": created,
      "digest": digest,
      "repository": repository,
      "shared_size": shared_size,
      "size": size,
      "tag": tag,
      "unique_size": unique_size,


};


          imageData_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (imageData_data_create_json.containsKey(key) == false) {
          imageData_data_create_json[key] = value;
        }
      });
    }
return ImageData(imageData_data_create_json);


      }
}
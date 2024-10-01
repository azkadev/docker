// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "image_data.dart";

 
class ImageDatas extends JsonScheme {

  
  ImageDatas(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"imageDatas","count":47,"images":[{"@type":"imageData","image_id":"IMAGE ID","containers":"CONTAINERS","created_at":"CREATED AT","created":"CREATED","digest":"DIGEST","repository":"REPOSITORY","shared_size":"SHARED SIZE","size":"SIZE","tag":"TAG","unique_size":"UNIQUE SIZE"}]};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == imageDatas
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

  

  /// create [ImageDatas]
  /// Empty  
  static ImageDatas empty() {
    return ImageDatas({});
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

  
  List<ImageData> get images {
    try {
      if (rawData["images"] is List == false){
        return [];
      }
      return (rawData["images"] as List).map((e) => ImageData(e as Map)).toList().cast<ImageData>();
    } catch (e) {
      return [];
    }
  }


  
  set images(List<ImageData> values) {
    rawData["images"] = values.map((value) => value.toJson()).toList();
  }



  
  static ImageDatas create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "imageDatas",
    num? count,
      List<ImageData>? images,
})  {
    // ImageDatas imageDatas = ImageDatas({
final Map imageDatas_data_create_json = {
  
      "@type": special_type,
      "count": count,
      "images": (images != null)? images.toJson(): null,


};


          imageDatas_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (imageDatas_data_create_json.containsKey(key) == false) {
          imageDatas_data_create_json[key] = value;
        }
      });
    }
return ImageDatas(imageDatas_data_create_json);


      }
}
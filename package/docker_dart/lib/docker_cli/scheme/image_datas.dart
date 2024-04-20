// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "image_data.dart";

 
class ImageDatas extends JsonScheme {

  
  ImageDatas(super.rawData);
   
  static Map get defaultData {
    return {"@type":"imageDatas","count":47,"images":[{"@type":"imageData","image_id":"IMAGE ID","containers":"CONTAINERS","created_at":"CREATED AT","created":"CREATED","digest":"DIGEST","repository":"REPOSITORY","shared_size":"SHARED SIZE","size":"SIZE","tag":"TAG","unique_size":"UNIQUE SIZE"}]};
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


  
  static ImageDatas create({

    String special_type = "imageDatas",
    num? count,
      List<ImageData>? images,
})  {
    // ImageDatas imageDatas = ImageDatas({
Map imageDatas_data_create_json = {
  
      "@type": special_type,
      "count": count,
      "images": (images != null)? images.toJson(): null,


};


          imageDatas_data_create_json.removeWhere((key, value) => value == null);
ImageDatas imageDatas_data_create = ImageDatas(imageDatas_data_create_json);

return imageDatas_data_create;



      }
}
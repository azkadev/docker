// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";



class ImageData extends JsonScheme {

  
  ImageData(super.rawData);
   
  static Map get defaultData {
    return {"@type":"imageData","image_id":"IMAGE ID","containers":"CONTAINERS","created_at":"CREATED AT","created":"CREATED","digest":"DIGEST","repository":"REPOSITORY","shared_size":"SHARED SIZE","size":"SIZE","tag":"TAG","unique_size":"UNIQUE SIZE"};
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


  
  static ImageData create({

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
Map imageData_data_create_json = {
  
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
ImageData imageData_data_create = ImageData(imageData_data_create_json);

return imageData_data_create;



      }
}
// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";



class DeletedImageData extends JsonScheme {

  
  DeletedImageData(super.rawData);
   
  static Map get defaultData {
    return {"@type":"deletedImageData","message":""};
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


  
  String? get message {
    try {
      if (rawData["message"] is String == false){
        return null;
      }
      return rawData["message"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static DeletedImageData create({

    String special_type = "deletedImageData",
    String? message,
})  {
    // DeletedImageData deletedImageData = DeletedImageData({
Map deletedImageData_data_create_json = {
  
      "@type": special_type,
      "message": message,


};


          deletedImageData_data_create_json.removeWhere((key, value) => value == null);
DeletedImageData deletedImageData_data_create = DeletedImageData(deletedImageData_data_create_json);

return deletedImageData_data_create;



      }
}
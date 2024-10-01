// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class DeletedImageData extends JsonScheme {

  
  DeletedImageData(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"deletedImageData","message":""};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == deletedImageData
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

  

  /// create [DeletedImageData]
  /// Empty  
  static DeletedImageData empty() {
    return DeletedImageData({});
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

  
  set message(String? value) {
    rawData["message"] = value;
  }


  
  static DeletedImageData create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "deletedImageData",
    String? message,
})  {
    // DeletedImageData deletedImageData = DeletedImageData({
final Map deletedImageData_data_create_json = {
  
      "@type": special_type,
      "message": message,


};


          deletedImageData_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (deletedImageData_data_create_json.containsKey(key) == false) {
          deletedImageData_data_create_json[key] = value;
        }
      });
    }
return DeletedImageData(deletedImageData_data_create_json);


      }
}
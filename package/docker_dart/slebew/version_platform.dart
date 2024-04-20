// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class VersionPlatform extends JsonScheme {

  
  VersionPlatform(super.rawData);
   
  static Map get defaultData {
    return {"@type":"versionPlatform","Name":"Docker Engine - Community"};
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


  
  String? get Name {
    try {
      if (rawData["Name"] is String == false){
        return null;
      }
      return rawData["Name"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static VersionPlatform create({

    String special_type = "versionPlatform",
    String? Name,
})  {
    // VersionPlatform versionPlatform = VersionPlatform({
Map versionPlatform_data_create_json = {
  
      "@type": special_type,
      "Name": Name,


};


          versionPlatform_data_create_json.removeWhere((key, value) => value == null);
VersionPlatform versionPlatform_data_create = VersionPlatform(versionPlatform_data_create_json);

return versionPlatform_data_create;



      }
}
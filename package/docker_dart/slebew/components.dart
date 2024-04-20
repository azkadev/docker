// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "details.dart";

 
class Components extends JsonScheme {

  
  Components(super.rawData);
   
  static Map get defaultData {
    return {"Name":"docker-init","Version":"0.19.0","Details":{"@type":"Details","GitCommit":"de40ad0"},"@type":"Components"};
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


  
  String? get Version {
    try {
      if (rawData["Version"] is String == false){
        return null;
      }
      return rawData["Version"] as String;
    } catch (e) {
      return null;
    }
  }


  
  Details get Details {
    try {
      if (rawData["Details"] is Map == false){
        return Details({}); 
      }
      return Details(rawData["Details"] as Map);
    } catch (e) {  
      return Details({}); 
    }
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


  
  static Components create({

    String? Name,
    String? Version,
      Details? Details,
    String special_type = "Components",
})  {
    // Components components = Components({
Map components_data_create_json = {
  
      "Name": Name,
      "Version": Version,
      "Details": (Details != null)?Details.toJson(): null,
      "@type": special_type,


};


          components_data_create_json.removeWhere((key, value) => value == null);
Components components_data_create = Components(components_data_create_json);

return components_data_create;



      }
}
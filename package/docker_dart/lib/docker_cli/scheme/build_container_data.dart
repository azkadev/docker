// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";



class BuildContainerData extends JsonScheme {

  
  BuildContainerData(super.rawData);
   
  static Map get defaultData {
    return {"@type":"buildContainerData","message":""};
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


  
  static BuildContainerData create({

    String special_type = "buildContainerData",
    String? message,
})  {
    // BuildContainerData buildContainerData = BuildContainerData({
Map buildContainerData_data_create_json = {
  
      "@type": special_type,
      "message": message,


};


          buildContainerData_data_create_json.removeWhere((key, value) => value == null);
BuildContainerData buildContainerData_data_create = BuildContainerData(buildContainerData_data_create_json);

return buildContainerData_data_create;



      }
}
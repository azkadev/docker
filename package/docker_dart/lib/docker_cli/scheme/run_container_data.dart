// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class RunContainerData extends JsonScheme {

  
  RunContainerData(super.rawData);
   
  static Map get defaultData {
    return {"@type":"runContainerData","message":""};
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


  
  static RunContainerData create({

    String special_type = "runContainerData",
    String? message,
})  {
    // RunContainerData runContainerData = RunContainerData({
Map runContainerData_data_create_json = {
  
      "@type": special_type,
      "message": message,


};


          runContainerData_data_create_json.removeWhere((key, value) => value == null);
RunContainerData runContainerData_data_create = RunContainerData(runContainerData_data_create_json);

return runContainerData_data_create;



      }
}
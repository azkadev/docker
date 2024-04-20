// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class Details extends JsonScheme {

  
  Details(super.rawData);
   
  static Map get defaultData {
    return {"@type":"Details","ApiVersion":"1.44","Arch":"amd64","BuildTime":"2024-02-06T21:14:22.000000000+00:00","Experimental":"false","GitCommit":"de40ad0","GoVersion":"go1.21.6","KernelVersion":"6.5.0-25-generic","MinAPIVersion":"1.24","Os":"linux"};
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


  
  String? get ApiVersion {
    try {
      if (rawData["ApiVersion"] is String == false){
        return null;
      }
      return rawData["ApiVersion"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get Arch {
    try {
      if (rawData["Arch"] is String == false){
        return null;
      }
      return rawData["Arch"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get BuildTime {
    try {
      if (rawData["BuildTime"] is String == false){
        return null;
      }
      return rawData["BuildTime"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get Experimental {
    try {
      if (rawData["Experimental"] is String == false){
        return null;
      }
      return rawData["Experimental"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get GitCommit {
    try {
      if (rawData["GitCommit"] is String == false){
        return null;
      }
      return rawData["GitCommit"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get GoVersion {
    try {
      if (rawData["GoVersion"] is String == false){
        return null;
      }
      return rawData["GoVersion"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get KernelVersion {
    try {
      if (rawData["KernelVersion"] is String == false){
        return null;
      }
      return rawData["KernelVersion"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get MinAPIVersion {
    try {
      if (rawData["MinAPIVersion"] is String == false){
        return null;
      }
      return rawData["MinAPIVersion"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get Os {
    try {
      if (rawData["Os"] is String == false){
        return null;
      }
      return rawData["Os"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static Details create({

    String special_type = "Details",
    String? ApiVersion,
    String? Arch,
    String? BuildTime,
    String? Experimental,
    String? GitCommit,
    String? GoVersion,
    String? KernelVersion,
    String? MinAPIVersion,
    String? Os,
})  {
    // Details details = Details({
Map details_data_create_json = {
  
      "@type": special_type,
      "ApiVersion": ApiVersion,
      "Arch": Arch,
      "BuildTime": BuildTime,
      "Experimental": Experimental,
      "GitCommit": GitCommit,
      "GoVersion": GoVersion,
      "KernelVersion": KernelVersion,
      "MinAPIVersion": MinAPIVersion,
      "Os": Os,


};


          details_data_create_json.removeWhere((key, value) => value == null);
Details details_data_create = Details(details_data_create_json);

return details_data_create;



      }
}
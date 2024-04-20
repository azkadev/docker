// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "version_platform.dart";
import "components.dart";

 
class Version extends JsonScheme {

  
  Version(super.rawData);
   
  static Map get defaultData {
    return {"@type":"version","Platform":{"@type":"versionPlatform","Name":"Docker Engine - Community"},"Components":[{"Name":"Engine","Version":"25.0.3","Details":{"ApiVersion":"1.44","Arch":"amd64","BuildTime":"2024-02-06T21:14:22.000000000+00:00","Experimental":"false","GitCommit":"f417435","GoVersion":"go1.21.6","KernelVersion":"6.5.0-25-generic","MinAPIVersion":"1.24","Os":"linux"}},{"Name":"containerd","Version":"1.6.28","Details":{"GitCommit":"ae07eda36dd25f8a1b98dfbf587313b99c0190bb"}},{"Name":"runc","Version":"1.1.12","Details":{"GitCommit":"v1.1.12-0-g51d5e94"}},{"Name":"docker-init","Version":"0.19.0","Details":{"GitCommit":"de40ad0"}}],"Version":"25.0.3","ApiVersion":"1.44","MinAPIVersion":"1.24","GitCommit":"f417435","GoVersion":"go1.21.6","Os":"linux","Arch":"amd64","KernelVersion":"6.5.0-25-generic","BuildTime":"2024-02-06T21:14:22.000000000+00:00"};
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


  
  VersionPlatform get Platform {
    try {
      if (rawData["Platform"] is Map == false){
        return VersionPlatform({}); 
      }
      return VersionPlatform(rawData["Platform"] as Map);
    } catch (e) {  
      return VersionPlatform({}); 
    }
  }

  
  List<Components> get Components {
    try {
      if (rawData["Components"] is List == false){
        return [];
      }
      return (rawData["Components"] as List).map((e) => Components(e as Map)).toList().cast<Components>();
    } catch (e) {
      return [];
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


  
  static Version create({

    String special_type = "version",
      VersionPlatform? Platform,
      List<Components>? Components,
    String? Version,
    String? ApiVersion,
    String? MinAPIVersion,
    String? GitCommit,
    String? GoVersion,
    String? Os,
    String? Arch,
    String? KernelVersion,
    String? BuildTime,
})  {
    // Version version = Version({
Map version_data_create_json = {
  
      "@type": special_type,
      "Platform": (Platform != null)?Platform.toJson(): null,
      "Components": (Components != null)? Components.toJson(): null,
      "Version": Version,
      "ApiVersion": ApiVersion,
      "MinAPIVersion": MinAPIVersion,
      "GitCommit": GitCommit,
      "GoVersion": GoVersion,
      "Os": Os,
      "Arch": Arch,
      "KernelVersion": KernelVersion,
      "BuildTime": BuildTime,


};


          version_data_create_json.removeWhere((key, value) => value == null);
Version version_data_create = Version(version_data_create_json);

return version_data_create;



      }
}
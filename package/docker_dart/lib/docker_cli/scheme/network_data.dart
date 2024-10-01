// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class NetworkData extends JsonScheme {

  
  NetworkData(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"networkData","network_id":"NETWORK ID","name":"NAME","created_at":"CREATED AT","driver":"DRIVER","ipv6":"IPV6","internal":"INTERNAL","labels":"LABELS","scope":"SCOPE"};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == networkData
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

  

  /// create [NetworkData]
  /// Empty  
  static NetworkData empty() {
    return NetworkData({});
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


  
  String? get network_id {
    try {
      if (rawData["network_id"] is String == false){
        return null;
      }
      return rawData["network_id"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set network_id(String? value) {
    rawData["network_id"] = value;
  }


  
  String? get name {
    try {
      if (rawData["name"] is String == false){
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set name(String? value) {
    rawData["name"] = value;
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

  
  set created_at(String? value) {
    rawData["created_at"] = value;
  }


  
  String? get driver {
    try {
      if (rawData["driver"] is String == false){
        return null;
      }
      return rawData["driver"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set driver(String? value) {
    rawData["driver"] = value;
  }


  
  String? get ipv6 {
    try {
      if (rawData["ipv6"] is String == false){
        return null;
      }
      return rawData["ipv6"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set ipv6(String? value) {
    rawData["ipv6"] = value;
  }


  
  String? get internal {
    try {
      if (rawData["internal"] is String == false){
        return null;
      }
      return rawData["internal"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set internal(String? value) {
    rawData["internal"] = value;
  }


  
  String? get labels {
    try {
      if (rawData["labels"] is String == false){
        return null;
      }
      return rawData["labels"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set labels(String? value) {
    rawData["labels"] = value;
  }


  
  String? get scope {
    try {
      if (rawData["scope"] is String == false){
        return null;
      }
      return rawData["scope"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set scope(String? value) {
    rawData["scope"] = value;
  }


  
  static NetworkData create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "networkData",
    String? network_id,
    String? name,
    String? created_at,
    String? driver,
    String? ipv6,
    String? internal,
    String? labels,
    String? scope,
})  {
    // NetworkData networkData = NetworkData({
final Map networkData_data_create_json = {
  
      "@type": special_type,
      "network_id": network_id,
      "name": name,
      "created_at": created_at,
      "driver": driver,
      "ipv6": ipv6,
      "internal": internal,
      "labels": labels,
      "scope": scope,


};


          networkData_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (networkData_data_create_json.containsKey(key) == false) {
          networkData_data_create_json[key] = value;
        }
      });
    }
return NetworkData(networkData_data_create_json);


      }
}
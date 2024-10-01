// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "network_data.dart";

 
class NetworkDatas extends JsonScheme {

  
  NetworkDatas(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"networkDatas","count":6,"networks":[{"@type":"networkData","network_id":"NETWORK ID","name":"NAME","created_at":"CREATED AT","driver":"DRIVER","ipv6":"IPV6","internal":"INTERNAL","labels":"LABELS","scope":"SCOPE"}]};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == networkDatas
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

  

  /// create [NetworkDatas]
  /// Empty  
  static NetworkDatas empty() {
    return NetworkDatas({});
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


  
  num? get count {
    try {
      if (rawData["count"] is num == false){
        return null;
      }
      return rawData["count"] as num;
    } catch (e) {
      return null;
    }
  }

  
  set count(num? value) {
    rawData["count"] = value;
  }

  
  List<NetworkData> get networks {
    try {
      if (rawData["networks"] is List == false){
        return [];
      }
      return (rawData["networks"] as List).map((e) => NetworkData(e as Map)).toList().cast<NetworkData>();
    } catch (e) {
      return [];
    }
  }


  
  set networks(List<NetworkData> values) {
    rawData["networks"] = values.map((value) => value.toJson()).toList();
  }



  
  static NetworkDatas create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "networkDatas",
    num? count,
      List<NetworkData>? networks,
})  {
    // NetworkDatas networkDatas = NetworkDatas({
final Map networkDatas_data_create_json = {
  
      "@type": special_type,
      "count": count,
      "networks": (networks != null)? networks.toJson(): null,


};


          networkDatas_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (networkDatas_data_create_json.containsKey(key) == false) {
          networkDatas_data_create_json[key] = value;
        }
      });
    }
return NetworkDatas(networkDatas_data_create_json);


      }
}
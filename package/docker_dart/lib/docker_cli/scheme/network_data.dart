// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";



class NetworkData extends JsonScheme {

  
  NetworkData(super.rawData);
   
  static Map get defaultData {
    return {"@type":"networkData","network_id":"NETWORK ID","name":"NAME","created_at":"CREATED AT","driver":"DRIVER","ipv6":"IPV6","internal":"INTERNAL","labels":"LABELS","scope":"SCOPE"};
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


  
  static NetworkData create({

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
Map networkData_data_create_json = {
  
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
NetworkData networkData_data_create = NetworkData(networkData_data_create_json);

return networkData_data_create;



      }
}
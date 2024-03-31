// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "network_data.dart";


class NetworkDatas extends JsonScheme {

  
  NetworkDatas(super.rawData);
   
  static Map get defaultData {
    return {"@type":"networkDatas","count":6,"networks":[{"@type":"networkData","network_id":"NETWORK ID","name":"NAME","created_at":"CREATED AT","driver":"DRIVER","ipv6":"IPV6","internal":"INTERNAL","labels":"LABELS","scope":"SCOPE"}]};
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


  
  int? get count {
    try {
      if (rawData["count"] is int == false){
        return null;
      }
      return rawData["count"] as int;
    } catch (e) {
      return null;
    }
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


  
  static NetworkDatas create({

    String special_type = "networkDatas",
    int? count,
      List<NetworkData>? networks,
})  {
    // NetworkDatas networkDatas = NetworkDatas({
Map networkDatas_data_create_json = {
  
      "@type": special_type,
      "count": count,
      "networks": (networks != null)? networks.toJson(): null,


};


          networkDatas_data_create_json.removeWhere((key, value) => value == null);
NetworkDatas networkDatas_data_create = NetworkDatas(networkDatas_data_create_json);

return networkDatas_data_create;



      }
}
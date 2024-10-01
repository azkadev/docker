// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "container_stats_data.dart";

 
class ContainerStatsDatas extends JsonScheme {

  
  ContainerStatsDatas(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"containerStatsDatas","count":3,"containers_stats":[{"@type":"containerStatsData","container_id":"a000ae808918","name":"gnrl_api","container":"a000ae808918","block_io":"406kB / 0B","cpu_percent":"0.01%","mem_percent":"0.09%","mem_usage_limit":"6.875MiB / 7.116GiB","net_io":"0B / 0B","pids":"15"}]};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == containerStatsDatas
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

  

  /// create [ContainerStatsDatas]
  /// Empty  
  static ContainerStatsDatas empty() {
    return ContainerStatsDatas({});
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

  
  List<ContainerStatsData> get containers_stats {
    try {
      if (rawData["containers_stats"] is List == false){
        return [];
      }
      return (rawData["containers_stats"] as List).map((e) => ContainerStatsData(e as Map)).toList().cast<ContainerStatsData>();
    } catch (e) {
      return [];
    }
  }


  
  set containers_stats(List<ContainerStatsData> values) {
    rawData["containers_stats"] = values.map((value) => value.toJson()).toList();
  }



  
  static ContainerStatsDatas create({
              bool schemeUtilsIsSetDefaultData = false,

    String special_type = "containerStatsDatas",
    num? count,
      List<ContainerStatsData>? containers_stats,
})  {
    // ContainerStatsDatas containerStatsDatas = ContainerStatsDatas({
final Map containerStatsDatas_data_create_json = {
  
      "@type": special_type,
      "count": count,
      "containers_stats": (containers_stats != null)? containers_stats.toJson(): null,


};


          containerStatsDatas_data_create_json.removeWhere((key, value) => value == null);

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (containerStatsDatas_data_create_json.containsKey(key) == false) {
          containerStatsDatas_data_create_json[key] = value;
        }
      });
    }
return ContainerStatsDatas(containerStatsDatas_data_create_json);


      }
}
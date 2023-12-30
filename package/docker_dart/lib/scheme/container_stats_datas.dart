// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "container_stats_data.dart";


class ContainerStatsDatas extends JsonScheme {

  
  ContainerStatsDatas(super.rawData);
   
  static Map get defaultData {
    return {"@type":"containerStatsDatas","count":3,"containers_stats":[{"@type":"containerStatsData","container_id":"a000ae808918","name":"gnrl_api","container":"a000ae808918","block_io":"406kB / 0B","cpu_percent":"0.01%","mem_percent":"0.09%","mem_usage_limit":"6.875MiB / 7.116GiB","net_io":"0B / 0B","pids":"15"}]};
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


  
  static ContainerStatsDatas create({

    String special_type = "containerStatsDatas",
    int? count,
      List<ContainerStatsData>? containers_stats,
})  {
    // ContainerStatsDatas containerStatsDatas = ContainerStatsDatas({
Map containerStatsDatas_data_create_json = {
  
      "@type": special_type,
      "count": count,
      "containers_stats": (containers_stats != null)? containers_stats.toJson(): null,


};


          containerStatsDatas_data_create_json.removeWhere((key, value) => value == null);
ContainerStatsDatas containerStatsDatas_data_create = ContainerStatsDatas(containerStatsDatas_data_create_json);

return containerStatsDatas_data_create;



      }
}
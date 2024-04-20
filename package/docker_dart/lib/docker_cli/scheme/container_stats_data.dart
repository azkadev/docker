// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class ContainerStatsData extends JsonScheme {

  
  ContainerStatsData(super.rawData);
   
  static Map get defaultData {
    return {"@type":"containerStatsData","container_id":"a000ae808918","name":"gnrl_api","container":"a000ae808918","block_io":"406kB / 0B","cpu_percent":"0.01%","mem_percent":"0.09%","mem_usage_limit":"6.875MiB / 7.116GiB","net_io":"0B / 0B","pids":"15"};
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


  
  String? get container_id {
    try {
      if (rawData["container_id"] is String == false){
        return null;
      }
      return rawData["container_id"] as String;
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


  
  String? get container {
    try {
      if (rawData["container"] is String == false){
        return null;
      }
      return rawData["container"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get block_io {
    try {
      if (rawData["block_io"] is String == false){
        return null;
      }
      return rawData["block_io"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get cpu_percent {
    try {
      if (rawData["cpu_percent"] is String == false){
        return null;
      }
      return rawData["cpu_percent"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get mem_percent {
    try {
      if (rawData["mem_percent"] is String == false){
        return null;
      }
      return rawData["mem_percent"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get mem_usage_limit {
    try {
      if (rawData["mem_usage_limit"] is String == false){
        return null;
      }
      return rawData["mem_usage_limit"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get net_io {
    try {
      if (rawData["net_io"] is String == false){
        return null;
      }
      return rawData["net_io"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get pids {
    try {
      if (rawData["pids"] is String == false){
        return null;
      }
      return rawData["pids"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static ContainerStatsData create({

    String special_type = "containerStatsData",
    String? container_id,
    String? name,
    String? container,
    String? block_io,
    String? cpu_percent,
    String? mem_percent,
    String? mem_usage_limit,
    String? net_io,
    String? pids,
})  {
    // ContainerStatsData containerStatsData = ContainerStatsData({
Map containerStatsData_data_create_json = {
  
      "@type": special_type,
      "container_id": container_id,
      "name": name,
      "container": container,
      "block_io": block_io,
      "cpu_percent": cpu_percent,
      "mem_percent": mem_percent,
      "mem_usage_limit": mem_usage_limit,
      "net_io": net_io,
      "pids": pids,


};


          containerStatsData_data_create_json.removeWhere((key, value) => value == null);
ContainerStatsData containerStatsData_data_create = ContainerStatsData(containerStatsData_data_create_json);

return containerStatsData_data_create;



      }
}
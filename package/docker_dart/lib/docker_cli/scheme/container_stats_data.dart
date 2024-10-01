// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class ContainerStatsData extends JsonScheme {

  
  ContainerStatsData(super.rawData);
  
  /// return default data
  /// 
  static Map get defaultData {
    return {"@type":"containerStatsData","container_id":"a000ae808918","name":"gnrl_api","container":"a000ae808918","block_io":"406kB / 0B","cpu_percent":"0.01%","mem_percent":"0.09%","mem_usage_limit":"6.875MiB / 7.116GiB","net_io":"0B / 0B","pids":"15"};
  }

  /// check data 
  /// if raw data 
  /// - rawData["@type"] == containerStatsData
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

  

  /// create [ContainerStatsData]
  /// Empty  
  static ContainerStatsData empty() {
    return ContainerStatsData({});
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

  
  set container_id(String? value) {
    rawData["container_id"] = value;
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

  
  set container(String? value) {
    rawData["container"] = value;
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

  
  set block_io(String? value) {
    rawData["block_io"] = value;
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

  
  set cpu_percent(String? value) {
    rawData["cpu_percent"] = value;
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

  
  set mem_percent(String? value) {
    rawData["mem_percent"] = value;
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

  
  set mem_usage_limit(String? value) {
    rawData["mem_usage_limit"] = value;
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

  
  set net_io(String? value) {
    rawData["net_io"] = value;
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

  
  set pids(String? value) {
    rawData["pids"] = value;
  }


  
  static ContainerStatsData create({
              bool schemeUtilsIsSetDefaultData = false,

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
final Map containerStatsData_data_create_json = {
  
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

    if (schemeUtilsIsSetDefaultData) {
      defaultData.forEach((key, value) {
        if (containerStatsData_data_create_json.containsKey(key) == false) {
          containerStatsData_data_create_json[key] = value;
        }
      });
    }
return ContainerStatsData(containerStatsData_data_create_json);


      }
}
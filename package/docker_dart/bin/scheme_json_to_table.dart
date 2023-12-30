void main(List<String> args) async {
  Map scheme_data = {

    "ID": "fd0810942c27",

    "Name": "customnetwork",
    "CreatedAt": "2023-11-24 14:48:20.737297571 +0700 WIB",
    "Driver": "bridge",
    "IPv6": "false",
    "Internal": "false",
    "Labels": "",
    "Scope": "local",
  };

  String data = "table ";

  scheme_data.forEach((key, value) {
    data += "{{.${key}}}|";
  });

  print(data.replaceAll(RegExp(r"(\|)$", caseSensitive: false), "").trim());
}

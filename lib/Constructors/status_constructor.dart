class StatusConstructor {
  String imageUrl;
  String time;
  String subtext;
  String name;

  StatusConstructor(
      {required this.name,
      required this.imageUrl,
      required this.subtext,
      required this.time});

  static StatusConstructor fromjson(json) => StatusConstructor(
      name: json["name"],
      imageUrl: json["imageUrl"],
      subtext: json["subtext"],
      time: json["time"]
      );
}

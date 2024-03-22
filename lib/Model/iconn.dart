import 'dart:convert';


List<Iconn> iconnFromJson(String str) =>
    List<Iconn>.from(json.decode(str).map((x) => Iconn.fromJson(x)));

String iconnToJson(List<Iconn> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));



class Iconn {
  String url;
  String name;
  String extname;
  int size;
  String mimeType;

  Iconn({
    required this.url,
    required this.name,
    required this.extname,
    required this.size,
    required this.mimeType,
  });

  factory Iconn.fromJson(Map<String, dynamic> json) => Iconn(
        url: json["url"],
        name: json["name"],
        extname: json["extname"],
        size: json["size"],
        mimeType: json["mimeType"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "name": name,
        "extname": extname,
        "size": size,
        "mimeType": mimeType,
      };
}

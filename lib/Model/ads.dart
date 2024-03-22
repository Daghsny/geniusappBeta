// To parse this JSON data, do
//
//     final advertise = advertiseFromJson(jsonString);

import 'dart:convert';

List<Advertise> advertiseFromJson(String str) => 
List<Advertise>
.from(json.decode(str).map((x) => 
Advertise.fromJson(x)));

String advertiseToJson(List<Advertise> data) => 
json.encode(List<dynamic>.from(data
.map((x) => x.toJson())));

class Advertise {
    int id;
    String title;
    String subtitle;
    AdsPicture adsPicture;
    DateTime createdAt;
    DateTime updatedAt;

    Advertise({
        required this.id,
        required this.title,
        required this.subtitle,
        required this.adsPicture,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Advertise.fromJson(Map<String, dynamic> json) => Advertise(
        id: json["id"],
        title: json["title"],
        subtitle: json["subtitle"],
        adsPicture: AdsPicture.fromJson(json["ads_picture"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "ads_picture": adsPicture.toJson(),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

class AdsPicture {
    String url;
    String name;
    String extname;
    int size;
    String mimeType;

    AdsPicture({
        required this.url,
        required this.name,
        required this.extname,
        required this.size,
        required this.mimeType,
    });

    factory AdsPicture.fromJson(Map<String, dynamic> json) => AdsPicture(
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

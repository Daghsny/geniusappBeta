// To parse this JSON data, do
//
//     final field = fieldFromJson(jsonString);

import 'dart:convert';

import 'package:geniusapp/Model/course.dart';
import 'package:geniusapp/Model/iconn.dart';

List<Field> fieldFromJson(String str) =>
    List<Field>.from(json.decode(str).map((x) => Field.fromJson(x)));

String fieldToJson(List<Field> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Field {
  int id;
  String title;
  String description;
  Iconn iconn;
  DateTime createdAt;
  DateTime updatedAt;
  List<Course> courses;

  Field({
    required this.id,
    required this.title,
    required this.description,
    required this.iconn,
    required this.createdAt,
    required this.updatedAt,
    required this.courses,
  });

  factory Field.fromJson(Map<String, dynamic> json) => Field(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        iconn: Iconn.fromJson(json["icon"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        courses:
            List<Course>.from(json["courses"].map((x) => Course.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "icon": iconn.toJson(),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "courses": List<dynamic>.from(courses.map((x) => x.toJson())),
      };
}

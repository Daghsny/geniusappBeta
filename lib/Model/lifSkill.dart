import 'dart:convert';

import 'package:geniusapp/Model/teacher.dart';

List<LifeSkill> lifeSkillFromJson(String str) =>
    List<LifeSkill>.from(json.decode(str).map((x) => LifeSkill.fromJson(x)));

String lifeSkillToJson(List<LifeSkill> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LifeSkill {
  int id;
  String title;
  String description;
  MainPicture mainPicture;
  MainPicture videoUrl;
  int duration;
  int teacherId;
  DateTime createdAt;
  DateTime updatedAt;
  Teacher teacher;

  LifeSkill({
    required this.id,
    required this.title,
    required this.description,
    required this.mainPicture,
    required this.videoUrl,
    required this.duration,
    required this.teacherId,
    required this.createdAt,
    required this.updatedAt,
    required this.teacher,
  });

  factory LifeSkill.fromJson(Map<String, dynamic> json) => LifeSkill(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        mainPicture: MainPicture.fromJson(json["main_picture"]),
        videoUrl: MainPicture.fromJson(json["video_url"]),
        duration: json["duration"],
        teacherId: json["teacher_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        teacher: Teacher.fromJson(json["teacher"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "main_picture": mainPicture.toJson(),
        "video_url": videoUrl.toJson(),
        "duration": duration,
        "teacher_id": teacherId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "teacher": teacher.toJson(),
      };
}

class MainPicture {
  String url;
  String name;
  String extname;
  int size;
  String mimeType;

  MainPicture({
    required this.url,
    required this.name,
    required this.extname,
    required this.size,
    required this.mimeType,
  });

  factory MainPicture.fromJson(Map<String, dynamic> json) => MainPicture(
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

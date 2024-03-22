import 'dart:convert';

import 'package:geniusapp/Model/iconn.dart';
import 'package:geniusapp/Model/lesson.dart';

List<Course> courseFromJson(String str) =>
    List<Course>.from(json.decode(str).map((x) => Course.fromJson(x)));

String courseToJson(List<Course> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Course {
    int id;
    String title;
    String description;
    int duration;
    Iconn mainPicture;
    int fieldId;
    int teacherId;
    DateTime createdAt;
    DateTime updatedAt;
    List<Lesson>? lessons;

    Course({
        required this.id,
        required this.title,
        required this.description,
        required this.duration,
        required this.mainPicture,
        required this.fieldId,
        required this.teacherId,
        required this.createdAt,
        required this.updatedAt,
        this.lessons,
    });

    factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        duration: json["duration"],
        mainPicture: Iconn.fromJson(json["main_picture"]),
        fieldId: json["field_id"],
        teacherId: json["teacher_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        lessons: json["lessons"] == null ? [] : List<Lesson>.from(json["lessons"]!.map((x) => Lesson.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "duration": duration,
        "main_picture": mainPicture.toJson(),
        "field_id": fieldId,
        "teacher_id": teacherId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "lessons": lessons == null ? [] : List<dynamic>.from(lessons!.map((x) => x.toJson())),
    };
}

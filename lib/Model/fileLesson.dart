import 'dart:convert';

import 'package:geniusapp/Model/lesson.dart';

List<FilesLesson> filesLessonFromJson(String str) => List<FilesLesson>.from(json.decode(str).map((x) => FilesLesson.fromJson(x)));

String filesLessonToJson(List<FilesLesson> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FilesLesson {
    int id;
    String fileName;
    FilePath filePath;
    int lessonId;
    DateTime createdAt;
    DateTime updatedAt;
    Lesson lesson;

    FilesLesson({
        required this.id,
        required this.fileName,
        required this.filePath,
        required this.lessonId,
        required this.createdAt,
        required this.updatedAt,
        required this.lesson,
    });

    factory FilesLesson.fromJson(Map<String, dynamic> json) => FilesLesson(
        id: json["id"],
        fileName: json["file_name"],
        filePath: FilePath.fromJson(json["file_path"]),
        lessonId: json["lesson_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        lesson: Lesson.fromJson(json["lesson"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "file_name": fileName,
        "file_path": filePath.toJson(),
        "lesson_id": lessonId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "lesson": lesson.toJson(),
    };
}

class FilePath {
    String url;
    String name;
    String extname;
    int size;
    String mimeType;

    FilePath({
        required this.url,
        required this.name,
        required this.extname,
        required this.size,
        required this.mimeType,
    });

    factory FilePath.fromJson(Map<String, dynamic> json) => FilePath(
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
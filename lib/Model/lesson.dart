// import 'package:geniusapp/Model/course.dart';
// import 'package:geniusapp/Model/iconn.dart';
// import 'package:geniusapp/Model/teacher.dart';
// import 'dart:convert';


// List<Lesson> lessonFromJson(String str) =>
//     List<Lesson>
//     .from(json.decode(str).map((x) => 
//     Lesson.fromJson(x)));

// String lessonToJson(List<Lesson> data) =>
//     json.encode(List<dynamic>.from(data
//     .map((x) => x.toJson())));

// class Lesson {
//     int id;
//     String title;
//     String description;
//     Iconn mainPicture;
//     Iconn videoUrl;
//     int duration;
//     int courseId;
//     int teacherId;
//     DateTime createdAt;
//     DateTime updatedAt;
//     Course course;
//     Teacher teacher;

//     Lesson({
//         required this.id,
//         required this.title,
//         required this.description,
//         required this.mainPicture,
//         required this.videoUrl,
//         required this.duration,
//         required this.courseId,
//         required this.teacherId,
//         required this.createdAt,
//         required this.updatedAt,
//         required this.course,
//         required this.teacher,
//     });

//     factory Lesson.fromJson(Map<String, dynamic> json) => Lesson(
//         id: json["id"],
//         title: json["title"],
//         description: json["description"],
//         mainPicture: Iconn.fromJson(json["main_picture"]),
//         videoUrl: Iconn.fromJson(json["video_url"]),
//         duration: json["duration"],
//         courseId: json["course_id"],
//         teacherId: json["teacher_id"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         course: Course.fromJson(json["course"]),
//         teacher: Teacher.fromJson(json["teacher"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "description": description,
//         "main_picture": mainPicture.toJson(),
//         "video_url": videoUrl.toJson(),
//         "duration": duration,
//         "course_id": courseId,
//         "teacher_id": teacherId,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "course": course.toJson(),
//         "teacher": teacher.toJson(),
//     };
// }


// To parse this JSON data, do
//
//     final lesson = lessonFromJson(jsonString);

import 'dart:convert';

import 'package:geniusapp/Model/course.dart';
import 'package:geniusapp/Model/iconn.dart';
import 'package:geniusapp/Model/teacher.dart';

List<Lesson> lessonFromJson(String str) => List<Lesson>.from(json.decode(str).map((x) => Lesson.fromJson(x)));

String lessonToJson(List<Lesson> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Lesson {
    int id;
    String title;
    String description;
    Iconn mainPicture;
    Iconn videoUrl;
    int duration;
    int courseId;
    int teacherId;
    DateTime createdAt;
    DateTime updatedAt;
    Teacher teacher;
    Course course;
    List<FilesLesson>? filesLesson;

    Lesson({
        required this.id,
        required this.title,
        required this.description,
        required this.mainPicture,
        required this.videoUrl,
        required this.duration,
        required this.courseId,
        required this.teacherId,
        required this.createdAt,
        required this.updatedAt,
        required this.teacher,
        required this.course,
        required this.filesLesson,
    });

    factory Lesson.fromJson(Map<String, dynamic> json) => Lesson(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        mainPicture: Iconn.fromJson(json["main_picture"]),
        videoUrl: Iconn.fromJson(json["video_url"]),
        duration: json["duration"],
        courseId: json["course_id"],
        teacherId: json["teacher_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        teacher: Teacher.fromJson(json["teacher"]),
        course: Course.fromJson(json["course"]),
        filesLesson: json["filesLesson"] == null ? [] :List<FilesLesson>.from(json["filesLesson"]!.map((x) => FilesLesson.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "main_picture": mainPicture.toJson(),
        "video_url": videoUrl.toJson(),
        "duration": duration,
        "course_id": courseId,
        "teacher_id": teacherId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "teacher": teacher.toJson(),
        "course": course.toJson(),
        "filesLesson": filesLesson == null ? [] :List<dynamic>.from(filesLesson!.map((x) => x.toJson())),
    };
}

// class Course {
//     int id;
//     String title;
//     String description;
//     int duration;
//     MainPicture mainPicture;
//     int fieldId;
//     int teacherId;
//     DateTime createdAt;
//     DateTime updatedAt;

//     Course({
//         required this.id,
//         required this.title,
//         required this.description,
//         required this.duration,
//         required this.mainPicture,
//         required this.fieldId,
//         required this.teacherId,
//         required this.createdAt,
//         required this.updatedAt,
//     });

//     factory Course.fromJson(Map<String, dynamic> json) => Course(
//         id: json["id"],
//         title: json["title"],
//         description: json["description"],
//         duration: json["duration"],
//         mainPicture: MainPicture.fromJson(json["main_picture"]),
//         fieldId: json["field_id"],
//         teacherId: json["teacher_id"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "description": description,
//         "duration": duration,
//         "main_picture": mainPicture.toJson(),
//         "field_id": fieldId,
//         "teacher_id": teacherId,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//     };
// }

// class MainPicture {
//     String url;
//     String name;
//     Extname extname;
//     int size;
//     MimeType mimeType;

//     MainPicture({
//         required this.url,
//         required this.name,
//         required this.extname,
//         required this.size,
//         required this.mimeType,
//     });

//     factory MainPicture.fromJson(Map<String, dynamic> json) => MainPicture(
//         url: json["url"],
//         name: json["name"],
//         extname: extnameValues.map[json["extname"]]!,
//         size: json["size"],
//         mimeType: mimeTypeValues.map[json["mimeType"]]!,
//     );

//     Map<String, dynamic> toJson() => {
//         "url": url,
//         "name": name,
//         "extname": extnameValues.reverse[extname],
//         "size": size,
//         "mimeType": mimeTypeValues.reverse[mimeType],
//     };
// }

// enum Extname {
//     MP4,
//     PDF,
//     PNG
// }

// final extnameValues = EnumValues({
//     "mp4": Extname.MP4,
//     "pdf": Extname.PDF,
//     "png": Extname.PNG
// });

// enum MimeType {
//     APPLICATION_PDF,
//     IMAGE_PNG,
//     VIDEO_MP4
// }

// final mimeTypeValues = EnumValues({
//     "application/pdf": MimeType.APPLICATION_PDF,
//     "image/png": MimeType.IMAGE_PNG,
//     "video/mp4": MimeType.VIDEO_MP4
// });

class FilesLesson {
    int id;
    String fileName;
    Iconn filePath;
    int lessonId;
    DateTime createdAt;
    DateTime updatedAt;

    FilesLesson({
        required this.id,
        required this.fileName,
        required this.filePath,
        required this.lessonId,
        required this.createdAt,
        required this.updatedAt,
    });

    factory FilesLesson.fromJson(Map<String, dynamic> json) => FilesLesson(
        id: json["id"],
        fileName: json["file_name"],
        filePath: Iconn.fromJson(json["file_path"]),
        lessonId: json["lesson_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "file_name": fileName,
        "file_path": filePath.toJson(),
        "lesson_id": lessonId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}


import 'package:geniusapp/Model/course.dart';
import 'package:geniusapp/Model/iconn.dart';
import 'package:geniusapp/Model/teacher.dart';
import 'dart:convert';


List<Lesson> lessonFromJson(String str) =>
    List<Lesson>
    .from(json.decode(str).map((x) => 
    Lesson.fromJson(x)));

String lessonToJson(List<Lesson> data) =>
    json.encode(List<dynamic>.from(data
    .map((x) => x.toJson())));

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
    Course course;
    Teacher teacher;

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
        required this.course,
        required this.teacher,
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
        course: Course.fromJson(json["course"]),
        teacher: Teacher.fromJson(json["teacher"]),
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
        "course": course.toJson(),
        "teacher": teacher.toJson(),
    };
}

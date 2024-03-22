import 'dart:convert';

import 'package:geniusapp/Model/iconn.dart';


List<Teacher> teacherFromJson(String str) =>
    List<Teacher>.from(json.decode(str).map((x) => Teacher.fromJson(x)));

String teacherToJson(List<Teacher> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Teacher {
  int id;
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  Iconn avatar;
  String bio;
  int fieldId;
  DateTime createdAt;
  DateTime updatedAt;

  Teacher({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.avatar,
    required this.bio,
    required this.fieldId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Teacher.fromJson(Map<String, dynamic> json) => Teacher(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        avatar: Iconn.fromJson(json["avatar"]),
        bio: json["bio"],
        fieldId: json["field_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone_number": phoneNumber,
        "avatar": avatar.toJson(),
        "bio": bio,
        "field_id": fieldId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

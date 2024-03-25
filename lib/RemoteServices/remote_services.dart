import 'package:geniusapp/Model/ads.dart';
import 'package:geniusapp/Model/lesson.dart';
import 'package:geniusapp/Model/level.dart';
import 'package:geniusapp/Model/lifSkill.dart';
import 'package:geniusapp/Model/teacher.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static List<Field> emptyList = [];
  static var client = http.Client();
  static String baseUrl = 'https://b72b-41-225-252-254.ngrok-free.app';

  static Future<List<Field>> fetchLevels() async {
    var response = await client.get(Uri.parse('$baseUrl/api/data'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return fieldFromJson(jsonString);
    } else {
      return emptyList;
      // return  throw Exception('');
    }
  }

  static Future<List<Teacher>> fetchTeachers() async {
    var response = await client.get(
      Uri.parse('$baseUrl/api/teachers'),
    );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return teacherFromJson(jsonString);
    } else {
      return teacherFromJson(response.body);
    }
  }

  static Future<List<Lesson>> fetchLessons() async {
    var response = await client.get(
      Uri.parse('$baseUrl/api/lessons'),
    );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return lessonFromJson(jsonString);
    } else {
      return lessonFromJson(response.body);
    }
  }

  static Future<List<Advertise>> fetchAdvertises() async {
    var response = await client.get(
      Uri.parse('$baseUrl/api/advertises'),
    );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return advertiseFromJson(jsonString);
    } else {
      return advertiseFromJson(response.body);
    }
  }

  static Future<List<LifeSkill>> fetchLifeSkills() async {
    var response = await client.get(
      Uri.parse('$baseUrl/api/lifeSkills'),
    );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return lifeSkillFromJson(jsonString);
    } else {
      return lifeSkillFromJson(response.body);
    }
  }
}

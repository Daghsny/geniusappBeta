import 'package:geniusapp/Model/ads.dart';
import 'package:geniusapp/Model/lesson.dart';
import 'package:geniusapp/Model/level.dart';
import 'package:geniusapp/Model/lifSkill.dart';
import 'package:geniusapp/Model/teacher.dart';
import 'package:geniusapp/RemoteServices/remote_services.dart';
import 'package:get/get.dart';

class LevelController extends GetxController {
  RxList<Field> levelLisit = RxList();
  RxList<Teacher> teachersList = RxList();
  RxList<Lesson> lessonsList = RxList();
  RxList<Advertise> advertiseList = RxList();
  RxList<LifeSkill> lifeSkillslist = RxList();

  RxBool isLoading = true.obs;
  RxBool isLoadingTeacher = true.obs;
  RxBool isLoadingLesson = true.obs;
  RxBool isLoadingAdvertise = true.obs;
  RxBool isLoadingLifeSkill = true.obs;

  @override
  void onInit() {
    getLevels();
    getTeachers();
    getLessons();
    getAdevrtises();
    getlifeSkills();
    super.onInit();
  }



  getLevels() async {
    try {
      isLoading(true);
      var levels = await RemoteServices.fetchLevels();
      if (levels.isNotEmpty) {
        levelLisit.value = levels;
      } else {
        levelLisit.value = [];
      }
    } finally {
      isLoading(false);
    }
  }

  getTeachers() async {
    try {
      isLoadingTeacher(true);
      var teachers = await RemoteServices.fetchTeachers();
      if (teachers.isNotEmpty) {
        teachersList.value = teachers;
      } else {
        teachersList.value = [];
      }
    } finally {
      isLoadingTeacher(false);
    }
  }

  getLessons() async {
    try {
      isLoadingLesson(true);
      var lessons = await RemoteServices.fetchLessons();
      if (lessons.isNotEmpty) {
        lessonsList.value = lessons;
      } else {
        lessonsList.value = [];
      }
    } finally {
      isLoadingLesson(false);
    }
  }

  getAdevrtises() async {
    try {
      isLoadingAdvertise(true);
      var advertises = await RemoteServices.fetchAdvertises();
      if (advertises.isNotEmpty) {
        advertiseList.value = advertises;
      } else {
        advertiseList.value = [];
      }
    } finally {
      isLoadingAdvertise(false);
    }
  }

  getlifeSkills() async {
    try {
      isLoadingLifeSkill(true);
      var lifeSkills = await RemoteServices.fetchLifeSkills();
      if (lifeSkills.isNotEmpty) {
        lifeSkillslist.value = lifeSkills;
      } else {
        lifeSkillslist.value = [];
      }
    } finally {
      isLoadingLifeSkill(false);
    }
  }
}

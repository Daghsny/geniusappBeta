import 'package:flutter/material.dart';
import 'package:geniusapp/QuizzONe/model/quizz_json.dart';
import 'package:geniusapp/QuizzONe/model/quizz_model.dart';
import 'package:geniusapp/QuizzONe/view/quizz_screen.dart';
import 'package:geniusapp/QuizzONe/view/result_screen.dart';
import 'package:get/get.dart';

class QuizScreenController extends GetxController {
  List<QuizzModel> quizz = quizzJson;
  int inde = 0;
  int score = 0;
  bool color = false;
  bool colorRed = false;

  changeInde(index) async {
    await Future.delayed(const Duration(seconds: 1));
    quizz[inde].answers[index] == quizz[inde].correctAnswer ? correct() : go();
    update();
  }

  //  correct()  {
  //   score += 1;
  //   color = true;
  //   // await Future.delayed(const Duration(milliseconds: 200));
  //   inde != quizzJson.length - 1
  //       ? inde++
  //       : {Get.off(() => ResultScreen(score: score))};
  //   color = false;
  //   update();
  // }

  correct() async {
    score += 1;
    color = true;
    await Future.delayed(const Duration(seconds: 1));
    inde != quizzJson.length - 1
        ? inde++
        : Get.defaultDialog(
            title: "Your Socre is $score / ${quizzJson.length.toString()}",
            cancel: restScore());

    // : Get.to(ResultScreen(score: score));
    color = false;
    update();
  }

  go() async {
    colorRed = true;
    await Future.delayed(const Duration(seconds: 1));

    inde != quizzJson.length - 1
        ? inde++
        : Get.defaultDialog(
            title: "Your Socre is $score / ${quizzJson.length.toString()}",
            middleText: "Try Again!",
            textCancel: 'Cancel',
            cancel: restScore());
    // : {Get.to(() => ResultScreen(score: score))};
    colorRed = false;
    update();
  }

  restScore() {
    score = 0;
    inde = 0;
    update();
  }
}

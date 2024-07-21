import 'package:flutter/material.dart';
import 'package:geniusapp/DashBoard/View/dashboardscreen.dart';
import 'package:geniusapp/QuizzONe/controller/quizz_controller.dart';
import 'package:geniusapp/QuizzONe/view/quizz_screen.dart';
import 'package:get/get.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    super.key,
    required this.score,
  });
  final QuizScreenController controller = Get.find();
  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You got $score/ ${controller.quizz.length}'),
            ElevatedButton(
              onPressed: () {
                controller.inde = 0;
                controller.score = 0;
                Get.off(DashboardPage());
              },
              child: const Text('Restart QiuzzOs'),
            ),
          ],
        ),
      ),
    );
  }
}

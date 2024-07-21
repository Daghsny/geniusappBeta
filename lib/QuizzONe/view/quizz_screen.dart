import 'package:flutter/material.dart';
import 'package:geniusapp/QuizzONe/controller/quizz_controller.dart';
import 'package:geniusapp/Services/colors.dart';
import 'package:get/get.dart';

class QuizzScreen extends StatelessWidget {
  QuizzScreen({super.key});
  final QuizScreenController controller = Get.put(QuizScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizzApp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<QuizScreenController>(builder: (controller) {
          return Column(
            children: [
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  // margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: kColors15,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Question N°${controller.inde + 1}:\n ${controller.quizz[controller.inde].question}',
                      // style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Expanded(
                flex: 6,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: ((context, index) {
                      return Center(
                        child: MaterialButton(
                          onPressed: () {
                            controller.changeInde(index);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minWidth: 200,
                          // color: controller.color == true &&
                          //         controller.quizz[controller.inde]
                          //                 .answers[index] ==
                          //             controller
                          //                 .quizz[controller.inde].correctAnswer
                          //     ? Colors.green
                          //     : kMybACKGreyColor,
                          color: controller.color == true &&
                                  controller.quizz[controller.inde]
                                          .answers[index] ==
                                      controller
                                          .quizz[controller.inde].correctAnswer
                              ? kColors15
                              : controller.colorRed == true &&
                                      controller.quizz[controller.inde]
                                              .answers[index] !=
                                          controller.quizz[controller.inde]
                                              .correctAnswer
                                  ? Colors.red
                                  : kMybACKGreyColor,
                          child: Text(
                            controller.quizz[controller.inde].answers[index],
                          ),
                        ),
                      );
                    })),
              ),
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
            ],
          );
        }),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
          
      //   },
      //   child: Text(controller.score.toString()),
      // ),
    );
  }
}

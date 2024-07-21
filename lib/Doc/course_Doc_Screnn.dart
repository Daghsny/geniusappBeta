import 'package:flutter/material.dart';
import 'package:geniusapp/Doc/one_lesson_doc_screen.dart';
import 'package:geniusapp/Model/course.dart';
import 'package:geniusapp/RemoteServices/remote_services.dart';
import 'package:geniusapp/VOD/CourseScreen/my_lesson_card.dart';
import 'package:get/get.dart';
import 'package:geniusapp/VOD/LessonScreen/View/lesson_screen.dart';

class LessonsDocScreen extends StatelessWidget {
  final Course course;
  const LessonsDocScreen({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 6.0,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  '${RemoteServices.baseUrl}${course.mainPicture.url}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Divider(),
            Column(
              children: course.lessons!.map<Widget>((lesson) {
                return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          () => ListDocsPageScreen(
                            lesson: lesson,
                            // lessonTitle: lesson.title,
                            // lessonTeacher: lesson.teacherId.toString(),
                            // lessonUrlVid:
                            //     '${RemoteServices.baseUrl}${lesson.videoUrl.url}',
                          ),
                          transition: Transition.rightToLeftWithFade,
                        );
                      },
                      child: MyLessonCard(
                        lessonDescrition: lesson.description,
                        lessonTitle: lesson.title,
                        lessonDuration: lesson.duration.toString(),
                        lessonImgUrl:
                            '${RemoteServices.baseUrl}${lesson.mainPicture.url}',
                        lessonTeacher: lesson.teacherId.toString(),
                      ),
                    )
                    //
                    //
                    // Card(
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       ListTile(
                    //           title: Text(
                    //             lesson.title,
                    //             style: const TextStyle(
                    //                 fontSize: 16, fontWeight: FontWeight.bold),
                    //           ),
                    //           subtitle: Text(
                    //             lesson.description,
                    //             maxLines: 3,
                    //           ),
                    //           leading: Text('${lesson.duration.toString()} min')
                    //           // leading: Image.asset(lesson['slug']),
                    //           //  trailing: Icon(Icons.more_vert)
                    //           ),
                    //       Row(
                    //         children: [
                    //           const SizedBox(
                    //             width: 12,
                    //           ),
                    //           Padding(
                    //             padding: const EdgeInsets.all(8.0),
                    //             child: GestureDetector(
                    //               onTap: () {
                    //                 Get.to(
                    //                   () => VideoLessonScreen(
                    //                     lesson: lesson,
                    //                   ),
                    //                   transition: Transition.cupertino,
                    //                 );
                    //               },
                    //               child: Container(
                    //                 width: 300,
                    //                 height: 30,
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(12),
                    //                   color: Colors.pink.shade100,
                    //                 ),
                    //                 child: const Center(
                    //                     child: Text(
                    //                   "Play ",
                    //                   style: TextStyle(color: Colors.pink),
                    //                 )),
                    //               ),
                    //             ),
                    //           ),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    // ),
                    );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

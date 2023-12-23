import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geniusapp/VOD/OneLessonScreen/one_lesson.dart';

class LessonsScreen extends StatelessWidget {
  final Map<String, dynamic> module;
  const LessonsScreen({super.key, required this.module});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(module["title"]),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 6.0,
        ),
        child: ListView(
          children: [
            Text(
              module["title"],
            ),
            Column(
              children: module['lessons'].map<Widget>((lesson) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(
                            lesson['title'],
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            lesson['description'],
                            maxLines: 3,
                          ),
                          leading: Image.asset(lesson['slug']),
                          //trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(
                                    () => VideoPlayerScreen(lesson: lesson),
                                    transition: Transition.cupertino,
                                  );
                                },
                                child: Container(
                                  width: 300,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.pink.shade100,
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "Play ",
                                    style: TextStyle(color: Colors.pink),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

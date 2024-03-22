// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geniusapp/Doc/one_lesson_doc_screen.dart';
import 'package:geniusapp/Doc/pdf_page.dart';
import 'package:geniusapp/Services/colors.dart';
import 'package:geniusapp/VOD/LessonScreen/View/lesson_screen.dart';

class LessonsDocScreen extends StatelessWidget {
  final Map<String, dynamic> module;
  const LessonsDocScreen({super.key, required this.module});

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
            Column(
              children: module['lessons'].map<Widget>((lesson) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 4.0,
                  ),
                  child: Card(
                    color: kMyGreyColor,
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
                          trailing: const Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            Get.to(
                              () => ListDocsPageScreen(lesson: lesson),
                              transition: Transition.cupertino,
                            );
                          },
                        ),
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

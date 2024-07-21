// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:geniusapp/Model/lesson.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:geniusapp/Doc/pdf_page.dart';

class ListDocsPageScreen extends StatelessWidget {
  final Lesson lesson;
  const ListDocsPageScreen({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lesson.title),
      ),
      // body: SfPdfViewer.network(lesson['docs'][1]['docurl']
      //     // 'https://docs.sfr.fr/guide/guide-box-plus-sfr.pdf',

      body: ListView(
        children: [
          Column(
            children: lesson.filesLesson!.map<Widget>((doc) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4.0,
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => DocDetailPage(
                          doc: doc,
                        ));
                  },
                  child: Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            doc.fileName,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

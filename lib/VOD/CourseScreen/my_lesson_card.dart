import 'package:flutter/material.dart';
import 'package:geniusapp/Services/colors.dart';

class MyLessonCard extends StatelessWidget {
  final String lessonImgUrl;
  final String lessonTitle;
  final String lessonDescrition;
  final String lessonTeacher;
  final String lessonDuration;
  const MyLessonCard({
    super.key,
    required this.lessonTitle,
    required this.lessonDescrition,
    required this.lessonImgUrl,
    required this.lessonTeacher,
    required this.lessonDuration,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 12,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(alignment: Alignment.center, children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          lessonImgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.play_circle_fill_outlined,
                      size: 40,
                      color: Colors.white54,
                    ),
                  ]),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          lessonTitle,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: kColors13),
                        ),
                        Text(
                          lessonDescrition,
                          maxLines: 3,
                          style: const TextStyle(
                            fontSize: 10,
                            color: kColors16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
              ),
              Row(
                children: [
                  Text(
                    'Mentor $lessonTeacher',
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Duration: ',
                    style: TextStyle(
                      fontSize: 10,
                      color: kColors16,
                    ),
                  ),
                  Text(
                    '$lessonDuration Min',
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:geniusapp/Model/level.dart';
import 'package:geniusapp/Model/teacher.dart';
import 'package:geniusapp/RemoteServices/remote_services.dart';
import 'package:geniusapp/Services/colors.dart';
import 'package:geniusapp/TeacherList/teacher_list.dart';
import 'package:get/get.dart';

class TeachersList extends StatelessWidget {
  const TeachersList({
    super.key,
    required this.teachers,
  });

  final List<Teacher> teachers;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Current Teachers",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      //fontWeight: FontWeight.bold,
                      fontFamily: 'Bebas',
                    ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => TeacherListScreen(
                        teacherList: teachers,
                      ));
                },
                child: Text(
                  "Show All",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      //fontWeight: FontWeight.bold,
                      fontFamily: 'Bebas'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: teachers.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              color: kColors15,
                              width: 3,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              '${RemoteServices.baseUrl}${teachers[index].avatar.url}',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '${teachers[index].lastName.toUpperCase()} ${teachers[index].firstName}',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.bold, height: 1.5),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

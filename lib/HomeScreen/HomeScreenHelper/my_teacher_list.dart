
import 'package:flutter/material.dart';
import 'package:geniusapp/HomeScreen/HomeScreenHelper/my_images_container.dart';
import 'package:geniusapp/Model/teacher.dart';
import 'package:geniusapp/Services/colors.dart';


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
              Text(
                "Show All",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'Bebas'),
              ),
            ],
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: teachers.length,
              itemBuilder: (context, index) {
                return Container(
                  //color: Colors.amberAccent.shade100,
                  // width: MediaQuery.of(context).size.width * 0.5,
                  margin: const EdgeInsets.only(right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: kColors15,
                            width: 3,
                          ),
                        ),
                        child: ImageContainer(
                          widht: MediaQuery.of(context).size.width * 0.3,
                          imgUrl: teachers[index].imageUrl,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        teachers[index].author,
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

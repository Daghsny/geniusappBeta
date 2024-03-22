import 'package:flutter/material.dart';
import 'package:geniusapp/Controller/level_controller.dart';
import 'package:geniusapp/HomeScreen/Helper/my_costum_tag.dart';
import 'package:geniusapp/VOD/TableOf_Field/fields_table_screen.dart';
import 'package:get/get.dart';

class MyTpicsADS extends StatelessWidget {
  MyTpicsADS({super.key});
/*   Page Controller  */
  final LevelController levelController = Get.put(LevelController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Topics",
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
        ),
        const SizedBox(
          height: 5,
        ),
        const SizedBox(
          height: 4,
        ),

        /**********TOPICS*************/
        SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: levelController.levelLisit.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        TableMatersScreen(),
                        transition: Transition.leftToRight,
                      );
                    },
                    child: CustomTag(
                        backgroundColor: Colors.black,
                        child: Text(
                          levelController.levelLisit[index].title,
                          style: const TextStyle(color: Colors.white),
                        )),
                  ),
                );
              },
            )),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}

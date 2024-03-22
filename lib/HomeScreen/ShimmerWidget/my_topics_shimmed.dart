import 'package:flutter/material.dart';
import 'package:geniusapp/HomeScreen/Helper/my_costum_tag.dart';
import 'package:geniusapp/VOD/TableOf_Field/fields_table_screen.dart';
import 'package:get/get.dart';
import 'package:geniusapp/Services/colors.dart';

class MyTopicsShimmed extends StatelessWidget {
  const MyTopicsShimmed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: GestureDetector(
                  onTap: () {
                    Get.to(TableMatersScreen());
                  },
                  child: const CustomTag(
                      backgroundColor: kMyGreyColor,
                      child: Text(
                        '00000000',
                        style: TextStyle(color: kMyGreyColor),
                      )),
                ),
              );
            },
          )),
      const SizedBox(
        height: 12,
      ),

      /**********ADS*************/
    ]);
  }
}

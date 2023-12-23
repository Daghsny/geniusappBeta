import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:geniusapp/HomeScreen/HomeScreenHelper/my_card_ads.dart';
import 'package:geniusapp/HomeScreen/HomeScreenHelper/my_costum_tag.dart';
import 'package:geniusapp/Services/colors.dart';

class MyTpicsADS extends StatelessWidget {
  MyTpicsADS({super.key});
/* 
  Page Controller
  */
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        /**********TOPICS TITLE & SHOW MORE*************/

        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         'Topics',
        //         style: Theme.of(context).textTheme.headlineSmall!.copyWith(
        //             //fontWeight: FontWeight.bold,
        //             fontFamily: 'Bebas',
        //             color: Colors.black),
        //         //height: 1.25,
        //         // color: Colors.white,
        //       ),
        //       //),
        //       TextButton(
        //         onPressed: () {},
        //         style: TextButton.styleFrom(padding: EdgeInsets.zero),
        //         child: GestureDetector(
        //           onTap: () {
        //             Get.to(TableMatersScreen());
        //           },
        //           child: Row(
        //             children: [
        //               Text(
        //                 'Shaw More',
        //                 style: Theme.of(context).textTheme.bodyLarge!.copyWith(
        //                       //fontWeight: FontWeight.bold,
        //                       fontFamily: 'Bebas',
        //                       color: Colors.black,
        //                     ),
        //               ),
        //               // const SizedBox(
        //               //   width: 5,
        //               // ),
        //               const Icon(
        //                 Icons.arrow_forward_ios,
        //                 color: Colors.black,
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        const SizedBox(
          height: 4,
        ),

        /**********TOPICS*************/
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const [
                CustomTag(
                  backgroundColor: Colors.black,
                  children: [
                    Text(
                      'ALL',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(width: 8),
                CustomTag(
                  backgroundColor: kMyGreyColor,
                  children: [Text('ENGLISH')],
                ),
                SizedBox(width: 8),
                CustomTag(
                  backgroundColor: kMyGreyColor,
                  children: [Text('MATH')],
                ),
                SizedBox(width: 8),
                CustomTag(
                  backgroundColor: kMyGreyColor,
                  children: [Text('PHYSIQUE')],
                ),
                SizedBox(width: 8),
                CustomTag(
                  backgroundColor: kMyGreyColor,
                  children: [Text('HISTOIRE')],
                ),
                SizedBox(width: 8),
                CustomTag(
                  backgroundColor: kMyGreyColor,
                  children: [Text('ARABIC')],
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),

        /**********ADS*************/
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: const [
                  MyCard(),
                  MyCard(),
                  MyCard(),
                  MyCard(),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: const ExpandingDotsEffect(
                dotColor: Colors.black,
                activeDotColor: kMyGreyColor,
                dotHeight: 5,
                dotWidth: 5,
              ),
            ),
            const SizedBox(
              height: 6,
            )
          ],
        ),
      ],
    );
  }
}

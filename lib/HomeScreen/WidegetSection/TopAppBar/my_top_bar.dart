import 'package:flutter/material.dart';
import 'package:geniusapp/Services/colors.dart';
import 'package:geniusapp/Model/article.dart';

class MyTopBar extends StatelessWidget {
  MyTopBar({
    super.key,
    required this.article,
  });

  final Article article;

  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
        color: kMyGreyColor,
      ),
      /**********WELCOME BAR & PIC*************/

      child: const Padding(
        padding:  EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(
            //   height: 30,
            // ),

            /**********SEARCH BAR*************/
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       const CircleAvatar(
            //         radius: 28,
            //         backgroundColor: Colors.white,
            //         child: Icon(
            //           Icons.menu,
            //           color: Colors.black,
            //         ),
            //       ),
            //       Container(
            //         width: 220,
            //         height: 60,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(40)),
            //         child: const Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             SizedBox(
            //               width: 10,
            //             ),
            //             Icon(Icons.search),
            //             Text("Search Here ..."),
            //             Spacer(),
            //             CircleAvatar(
            //               radius: 28,
            //               backgroundColor: Colors.black,
            //               child: Icon(
            //                 Icons.search,
            //                 color: Colors.white,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // MyTextFiel(
            //   controller: searchController,
            //   hintText: 'Search',
            //   obscuredText: false,
            // ),
            // const SizedBox(
            //   height: 8,
            // ),
            /******************SALUTATIONS********************** */
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Welcome ,  Mike',
                  style: TextStyle(
                      //color: kColors15,
                      //fontFamily: 'Bebas',
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, bottom: 14.0),
              child: Text("Be educated so that you can change the world.",
                  style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

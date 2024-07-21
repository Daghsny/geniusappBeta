import 'package:flutter/material.dart';
import 'package:geniusapp/Services/colors.dart';

class MyTopBar extends StatelessWidget {
  MyTopBar({
    super.key,
  });

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
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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

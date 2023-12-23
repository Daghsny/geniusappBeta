import 'package:flutter/material.dart';
import 'package:geniusapp/Services/colors.dart';

import 'my_images_container.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kColors15,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageContainer(
              height: double.infinity,
              widht: MediaQuery.of(context).size.width * 0.3,
              imgUrl:
                  'https://pbs.twimg.com/media/DaBM6sjXUAAea_o?format=jpg&name=small',
            ),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      "Good News !",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "56% OFF",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

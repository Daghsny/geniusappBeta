import 'package:flutter/material.dart';
import 'package:geniusapp/Services/colors.dart';

class MyCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  const MyCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imgUrl,
  });

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
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
             Expanded(
              child: Column(
               
                children: [
                  ListTile(
                    title: Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      subtitle,
                      style: const TextStyle(fontWeight: FontWeight.bold),
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

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:geniusapp/Model/article.dart';
import 'package:geniusapp/Model/lifSkill.dart';
import 'package:geniusapp/RemoteServices/remote_services.dart';
import 'package:geniusapp/Services/colors.dart';

class MyShimmerLifeSkils extends StatelessWidget {
  
  const MyShimmerLifeSkils({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Life Skills",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'Bebas',
                  ),
            ),
          ],
        ),
        // const SizedBox(height: 10),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: kMyGreyColor),
                  ),
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:geniusapp/Model/article.dart';
import 'package:geniusapp/Model/lifSkill.dart';
import 'package:geniusapp/RemoteServices/remote_services.dart';
import 'package:geniusapp/Services/colors.dart';

class MyLifeSkils extends StatelessWidget {
  final List<LifeSkill> lifeList;

  const MyLifeSkils({super.key, required this.lifeList});

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
            itemCount: lifeList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  width: 120,
                  //height: 160,
                  decoration: const BoxDecoration(
                    color: kMyGreyColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)), // Image border
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                            ),
                            child: Image.network(
                              '${RemoteServices.baseUrl}${lifeList[index].mainPicture.url}',
                              //fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        lifeList[index].title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Presented by ${lifeList[index].teacher.lastName.toUpperCase()}',
                        style: const TextStyle(fontSize: 8),
                      ),
                      Text(
                        '${lifeList[index].duration.toString()} MIN',
                        style: const TextStyle(fontSize: 8),
                      ),
                    ],
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

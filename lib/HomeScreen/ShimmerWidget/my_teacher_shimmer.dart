import 'package:flutter/material.dart';
import 'package:geniusapp/Services/colors.dart';

class MyTeacherShimmer extends StatelessWidget {
  const MyTeacherShimmer({super.key});

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
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: kMyGreyColor),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 12,
                        width: 80,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: kMyGreyColor),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

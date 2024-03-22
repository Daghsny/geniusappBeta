import 'package:flutter/material.dart';
import 'package:geniusapp/Services/colors.dart';

class ShimmerAdvertiseScreen extends StatelessWidget {
  const ShimmerAdvertiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
          child: Padding(
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
                  SizedBox(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kMyGreyColor),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        ListTile(
                          title: SizedBox(
                            height: 12,
                            width: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: kMyGreyColor,
                              ),
                            ),
                          ),
                          subtitle: SizedBox(
                            height: 8,
                            width: 80,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: kMyGreyColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 5,
          width: 80,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: kMyGreyColor,
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        )
      ],
    );
  }
}

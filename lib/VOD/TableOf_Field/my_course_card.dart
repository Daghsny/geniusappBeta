import 'package:flutter/material.dart';
import 'package:geniusapp/Services/colors.dart';

class MyCourseCard extends StatelessWidget {
  final String courseImgUrl;
  final String courseTitle;
  final String courseDescrition;
  final String courseTeacher;
  final String courseDuration;
  const MyCourseCard({
    super.key,
    required this.courseTitle,
    required this.courseDescrition,
    required this.courseImgUrl,
    required this.courseTeacher,
    required this.courseDuration,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          //bottom: 20,
        ),
        child: Card(
            color: kMyGreyColor,
            // elevation: 4,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          courseImgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            courseTitle,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: kColors13),
                          ),
                          Text(
                            courseDescrition,
                            maxLines: 3,
                            style: const TextStyle(
                              fontSize: 10,
                              color: kColors16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //const Spacer(),
                // const Divider(
                //   color: Colors.white,
                //   //thickness: 2.0,
                // ),
                Row(
                  children: [
                    Text(
                      'Mentor $courseTeacher',
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'Duration: ',
                      style: TextStyle(
                        fontSize: 10,
                        color: kColors16,
                      ),
                    ),
                    Text(
                      '$courseDuration Min',
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            )

            // ListTile(
            //   leading: ClipRRect(
            //     borderRadius: BorderRadius.circular(20),
            //     child: Image.network(
            //       courseImgUrl,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            //   title: Text(
            //     courseTitle,
            //     style: const TextStyle(
            //         fontWeight: FontWeight.bold,
            //         fontSize: 18,
            //         color: kColors13),
            //   ),
            //   subtitle: Text(
            //     courseDescrition,
            //     maxLines: 6,
            //     style: const TextStyle(
            //       fontSize: 12,
            //       color: kColors16,
            //     ),
            //   ),
            //   trailing: const Icon(Icons.arrow_forward_ios),
            // )

            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           SizedBox(
            //             width: 50,
            //             child: Image.network(
            //               courseImgUrl,
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               const Divider(),
            //               Text(
            //                 courseTitle,
            //                 style: const TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: 18,
            //                     color: kColors13),
            //               ),
            //               const Divider(),
            //               const SizedBox(
            //                 height: 8,
            //               ),
            //               Text(
            //                 courseDescrition,
            //                 maxLines: 2,
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            ),
      ),
    );
  }
}

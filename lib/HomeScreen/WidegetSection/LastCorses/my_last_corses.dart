import 'package:flutter/material.dart';
import 'package:geniusapp/Model/lesson.dart';
import 'package:geniusapp/RemoteServices/remote_services.dart';
import 'package:geniusapp/Services/colors.dart';

class MyLastCorses extends StatelessWidget {
  const MyLastCorses({
    super.key,
    required this.lessons,
  });

  final List<Lesson> lessons;
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
                "Last Courses",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      //fontWeight: FontWeight.bold,
                      fontFamily: 'Bebas',
                    ),
              ),
              Text(
                "More",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'Bebas'),
              ),
            ],
          ),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: lessons.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Card(
                    elevation: 0,
                    color: kMyGreyColor,
                    //width: MediaQuery.of(context).size.width * 0.4,
                    margin: const EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 180,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    lessons[index].course.title,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.grey.shade400,
                                    child: const Icon(
                                      Icons.bookmark_border,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Divider(
                                color: Colors.white,
                              ),
                              Text(
                                lessons[index].title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),

                              Text(
                                lessons[index].description,
                                style: const TextStyle(fontSize: 10),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Spacer(),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const Text('Watch Now'),
                                  const Spacer(),
                                  SizedBox(
                                    height: 30,
                                    child: Image.network(
                                        '${RemoteServices.baseUrl}${lessons[index].teacher.avatar.url}'),
                                  )
                                ],
                              )
                              // ImageContainer(
                              //   widht: 125,
                              //   imgUrl: articles[index].imageUrl,
                              // ),
                              // Column(
                              //   crossAxisAlignment: CrossAxisAlignment.start,
                              //   children: [
                              //     Text(
                              //       articles[index].title,
                              //       maxLines: 2,
                              //       style: const TextStyle(
                              //         fontWeight: FontWeight.bold,
                              //       ),
                              //     ),
                              //     Text(
                              //       '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                              //       maxLines: 2,
                              //       style: Theme.of(context)
                              //           .textTheme
                              //           .bodySmall!
                              //           .copyWith(
                              //             color: Colors.grey,
                              //             fontWeight: FontWeight.bold,
                              //             height: 1.5,
                              //           ),
                              //     ),
                              //     Text(
                              //       'by ${articles[index].author}',
                              //       maxLines: 2,
                              //       style: Theme.of(context)
                              //           .textTheme
                              //           .bodySmall!
                              //           .copyWith(
                              //             color: Colors.grey,
                              //             fontWeight: FontWeight.bold,
                              //             height: 1.5,
                              //           ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

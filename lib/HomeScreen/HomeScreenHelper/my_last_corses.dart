import 'package:flutter/material.dart';
import 'package:geniusapp/Model/article.dart';
import 'package:geniusapp/Services/colors.dart';

class MyLastCorses extends StatelessWidget {
  const MyLastCorses({
    super.key,
    required this.articles,
  });

  final List<Article> articles;
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
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 100,
                                    child: Text(
                                      "Product Design",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
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
                              const Text(
                                "Chapitre Num 02",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Spacer(),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Watch Now!'),
                                      SizedBox(
                                        height: 30,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.black,
                                          child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child:
                                        Image.asset('assets/images/miss.jpg'),
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

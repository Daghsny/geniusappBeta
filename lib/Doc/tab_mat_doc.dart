// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:geniusapp/HomeScreen/HomeScreenHelper/my_images_container.dart';
import 'package:geniusapp/Doc/lessons_doc_screen.dart';
import 'package:geniusapp/Model/article.dart';
import 'package:geniusapp/Services/colors.dart';
import 'package:geniusapp/Model/formation.dart';

class TableMatDocScreen extends StatelessWidget {
  TableMatDocScreen({super.key});
  final articles = Article.articles;
  final List<Map<String, dynamic>> formation = formations;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: formations.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Table De Matières Documents",
            style: TextStyle(
              color: Colors.grey,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage('assets/imgs/11.png'),
                  fit: BoxFit.cover,
                ),
              ),
              // child: const Text(
              //   "Hello",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              // ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: TabBar(
                  indicatorColor: kColors15,
                  indicatorSize: TabBarIndicatorSize.label,
                  dividerColor: Colors.transparent,
                  labelStyle:
                      const TextStyle(fontFamily: "Bebas", fontSize: 16),
                  unselectedLabelStyle: const TextStyle(
                      fontFamily: "ProductSans",
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  unselectedLabelColor: Colors.grey,

                  labelPadding: const EdgeInsets.only(right: 12),
                  //tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  tabs: formation
                      .map<Widget>(
                        (forma) => Tab(
                          icon: Text(
                            forma['title'],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 180,
              child: TabBarView(
                children: formation
                    .map<Widget>(
                      (forma) => ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: forma["modules"].length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              child: SizedBox(
                                width: 300,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, bottom: 20),
                                  child: Card(
                                    elevation: 12,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ListTile(
                                        leading: Image.asset(
                                            forma["modules"][index]["slug"]),
                                        title: Text(
                                          forma["modules"][index]["title"],
                                        ),
                                        subtitle: Text(
                                          forma["modules"][index]
                                              ["description"],
                                          maxLines: 5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Get.to(LessonsDocScreen(
                                    module: forma["modules"][index]));
                              },
                            );
                            // Text(forma["modules"][index]['title'] );
                          }),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

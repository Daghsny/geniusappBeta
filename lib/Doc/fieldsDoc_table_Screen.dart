import 'package:flutter/material.dart';
import 'package:geniusapp/Controller/level_controller.dart';
import 'package:geniusapp/Doc/course_Doc_Screnn.dart';
import 'package:geniusapp/Doc/lessons_doc_screen.dart';
import 'package:geniusapp/Model/level.dart';
import 'package:geniusapp/RemoteServices/remote_services.dart';
import 'package:get/get.dart';
import 'package:geniusapp/Services/colors.dart';

class TableDocFieldsScreen extends StatelessWidget {
  TableDocFieldsScreen({super.key});
  // final articles = Article.articles;
  // final List<Map<String, dynamic>> formation = formations;
  final LevelController levelController = Get.put(LevelController());

  @override
  Widget build(BuildContext context) {
    List<Field> fields = levelController.levelLisit;

    return DefaultTabController(
      length: fields.length,
      child: Scaffold(
        //backgroundColor: kMyGreyColor,
        appBar: AppBar(
          //backgroundColor: kMyGreyColor,
          title: const Text(
            "Table De Matières Documents",
            style: TextStyle(),
          ),
        ),
        body: Column(children: [
          Container(
            width: double.infinity,
            height: 200,
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage('assets/imgs/11.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: TabBar(
                indicatorColor: kColors15,
                indicatorSize: TabBarIndicatorSize.label,
                dividerColor: Colors.transparent,
                labelStyle: const TextStyle(fontFamily: "Bebas", fontSize: 16),
                unselectedLabelStyle: const TextStyle(
                    fontFamily: "ProductSans",
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                unselectedLabelColor: Colors.grey,
                labelPadding: const EdgeInsets.only(right: 12),
                isScrollable: true,
                tabs: fields
                    .map<Widget>(
                      (field) => Tab(
                          icon: Obx(
                        () => levelController.isLoading.value
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Text(field.title),
                      )),
                    )
                    .toList(),
              ),
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
              height: 140,
              child: Obx(
                () => levelController.isLoading.value
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : TabBarView(
                        children: fields
                            .map<Widget>(
                              (field) => ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: field.courses.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: SizedBox(
                                          width: 300,
                                          child: Card(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        height: 80,
                                                        width: 80,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Image.network(
                                                            '${RemoteServices.baseUrl}${field.courses[index].mainPicture.url}',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Expanded(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(field
                                                                .courses[index]
                                                                .title),
                                                            Text(
                                                              field
                                                                  .courses[
                                                                      index]
                                                                  .description,
                                                              maxLines: 3,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 10,
                                                                color:
                                                                    kColors16,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const Divider(
                                                    color: Colors.white,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Mentor ${field.courses[index].teacherId}',
                                                        style: const TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                      Text(
                                                        'Duration : ${field.courses[index].duration.toString()} Min',
                                                        style: const TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      //     MyCourseCard(
                                      //   courseTitle: field.courses[index].title,
                                      //   courseDescrition:
                                      //       field.courses[index].description,
                                      //   courseTeacher: field
                                      //       .courses[index].teacherId
                                      //       .toString(),
                                      //   courseDuration: field
                                      //       .courses[index].duration
                                      //       .toString(),
                                      //   courseImgUrl:
                                      //       '${RemoteServices.baseUrl}${field.courses[index].mainPicture.url}',
                                      // ),
                                      onTap: () {
                                        Get.to(() => LessonsDocScreen(
                                                course: field.courses[index])
                                            //   () => LessonsDocScreen(
                                            //       course: field.courses[index]),
                                            //   transition:
                                            //       Transition.rightToLeftWithFade,
                                            );
                                      },
                                    );
                                  }),
                            )
                            .toList(),
                      ),
              )),
          const SizedBox(
            height: 50,
          )
        ]),
      ),
    );
  }
}

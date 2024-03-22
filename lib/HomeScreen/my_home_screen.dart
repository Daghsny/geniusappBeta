import 'package:flutter/material.dart';
import 'package:geniusapp/Controller/level_controller.dart';
import 'package:geniusapp/HomeScreen/ShimmerWidget/my_ads_shimmer.dart';
import 'package:geniusapp/HomeScreen/ShimmerWidget/my_teacher_shimmer.dart';
import 'package:geniusapp/HomeScreen/ShimmerWidget/my_topics_shimmed.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/Advertise/ads.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/Drawer/my_drawer.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/LastCorses/my_last_corses.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/LifeSkills/life_skils.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/SearchPage/search_page.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/TeacherList/my_teacher_list.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/TopAppBar/my_top_bar.dart';
// import 'package:geniusapp/Controller/level_controller.dart';
// import 'package:geniusapp/HomeScreen/ShimmerWidget/my_ads_shimmer.dart';
// import 'package:geniusapp/HomeScreen/ShimmerWidget/my_teacher_shimmer.dart';
// import 'package:geniusapp/HomeScreen/ShimmerWidget/my_topics_shimmed.dart';
// import 'package:geniusapp/HomeScreen/WidegetSection/Advertise/ads.dart';
// import 'package:geniusapp/HomeScreen/WidegetSection/Drawer/my_drawer.dart';
// import 'package:geniusapp/HomeScreen/WidegetSection/LastCorses/my_last_corses.dart';
// import 'package:geniusapp/HomeScreen/WidegetSection/LifeSkills/life_skils.dart';
// import 'package:geniusapp/HomeScreen/WidegetSection/SearchPage/search_page.dart';
// import 'package:geniusapp/HomeScreen/WidegetSection/TeacherList/my_teacher_list.dart';
// import 'package:geniusapp/HomeScreen/WidegetSection/TopAppBar/my_top_bar.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/Topics/topics_ads.dart';

import 'package:get/get.dart';



import 'package:geniusapp/Model/article.dart';
import 'package:geniusapp/Services/colors.dart';

class MyHomeScreen extends StatelessWidget {
  MyHomeScreen({super.key, required this.articles});

  final Article article = Article.articles[0];
  final PageController controller = PageController();
  final List<Article> articles;
  final LevelController levelController = Get.put(LevelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kMybACKGreyColor,
      //extendBodyBehindAppBar: true,
      drawer: const MyDrawer(),

      // appBar: AppBar(
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   backgroundColor: kMyGreyColor,
      //   title: Row(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       const Text(
      //         'Welcome !!',
      //         style: TextStyle(
      //           color: kColors15,
      //           //fontFamily: 'Bebas',
      //           fontSize: 24,
      //         ),
      //       ),
      //       const SizedBox(width: 5),
      //       const Text(
      //         'Mike',
      //         style: TextStyle(
      //           color: Colors.white,
      //           // fontFamily: 'Bebas',
      //           fontSize: 24,
      //         ),
      //       ),
      //       Expanded(
      //         child: Container(),
      //       ),
      //       GestureDetector(
      //         child: const SizedBox(
      //           height: 40,
      //           width: 40,
      //           child: CircleAvatar(
      //             backgroundColor: kColors15,
      //             child: SizedBox(
      //               height: 50,
      //               width: 50,
      //               child: CircleAvatar(
      //                 backgroundImage: NetworkImage(
      //                   'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?size=626&ext=jpg&ga=GA1.2.1258295344.1678644097&semt=sph',
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //         onTap: () {
      //           Get.to(() => const Profile());
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: kMyGreyColor,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Get.to(
                      const SearchPage(),
                      transition: Transition.cupertino,
                    );
                  },
                  child: Container(
                    width: 220,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.search),
                        Text("Search Here ..."),
                        Spacer(),
                        CircleAvatar(
                          radius: 21,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            MyTopBar(article: article),
            Obx(
              () => levelController.isLoadingTeacher.value
                  ? const MyTeacherShimmer()
                  : TeachersList(teachers: levelController.teachersList),
            ),
            Obx(() => levelController.isLoadingTeacher.value
                ? const MyTopicsShimmed()
                : MyTpicsADS()),
            Obx(
              () => levelController.isLoadingAdvertise.value
                  ? const ShimmerAdvertiseScreen()
                  : AdvertiseScreen(adsList: levelController.advertiseList,),
            ),
            MyLastCorses(lessons: levelController.lessonsList),
            const MyLifeSkils(),
          ],
        ),
      ),
    );
  }
}

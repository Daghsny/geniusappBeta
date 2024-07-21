import 'package:flutter/material.dart';
import 'package:geniusapp/Controller/level_controller.dart';
import 'package:geniusapp/HomeScreen/ShimmerWidget/my_ads_shimmer.dart';
import 'package:geniusapp/HomeScreen/ShimmerWidget/my_shimmer_lifeSkill.dart';
import 'package:geniusapp/HomeScreen/ShimmerWidget/my_teacher_shimmer.dart';
import 'package:geniusapp/HomeScreen/ShimmerWidget/my_topics_shimmed.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/Advertise/ads.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/Drawer/my_drawer.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/LastCorses/my_last_corses.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/LifeSkills/life_skils.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/SearchPage/search_page.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/TeacherList/my_teacher_list.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/TopAppBar/my_top_bar.dart';
import 'package:geniusapp/HomeScreen/WidegetSection/Topics/topics_ads.dart';
import 'package:get/get.dart';
import 'package:geniusapp/Services/colors.dart';

class MyHomeScreen extends StatelessWidget {
  MyHomeScreen({super.key});

  // final PageController controller = PageController();
  final LevelController levelController = Get.put(LevelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kMybACKGreyColor,
      //extendBodyBehindAppBar: true,
      drawer: const MyDrawer(),

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
        body: RefreshIndicator(
          color: kMyGreyColor,
          backgroundColor: Colors.black,
          onRefresh: () async {
            Get.find<LevelController>().teachersList;
            await Future.delayed(const Duration(seconds: 3));
          },
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.zero,
            children: [
              MyTopBar(),
              Obx(() => levelController.isLoadingTeacher.value
                  // ? const Center(
                  //     child: SizedBox(
                  //     height: 80,
                  //     width: 80,
                  //     child: CircularProgressIndicator(),
                  //   ))
                  ? const MyTopicsShimmed()
                  : MyTpicsADS()),
              Obx(
                () => levelController.isLoadingAdvertise.value
                    ? const ShimmerAdvertiseScreen()
                    : AdvertiseScreen(adsList: levelController.advertiseList),
              ),
              MyLastCorses(
                lessons: levelController.lessonsList,
              ),
              Obx(
                () => levelController.isLoadingLifeSkill.value
                    ? const MyShimmerLifeSkils()
                    : MyLifeSkils(
                        lifeList: levelController.lifeSkillslist,
                      ),
              ),
              Obx(
                () => levelController.isLoadingTeacher.value
                    ? const MyTeacherShimmer()
                    : TeachersList(teachers: levelController.teachersList),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

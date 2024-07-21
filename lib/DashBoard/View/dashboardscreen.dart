import 'package:flutter/material.dart';
import 'package:geniusapp/Doc/fieldsDoc_table_Screen.dart';
import 'package:geniusapp/QuizzONe/view/quizz_screen.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:geniusapp/DashBoard/Controller/bottom_nav_bar_crt.dart';
import 'package:geniusapp/HomeScreen/my_home_screen.dart';
import 'package:geniusapp/ProfilScreen/profile.dart';
import 'package:geniusapp/Services/colors.dart';
import 'package:geniusapp/Shop/shops_screen.dart';
import 'package:geniusapp/VOD/TableOf_Field/fields_table_screen.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});
  final BottomNavBarController controller = Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<BottomNavBarController>(
        builder: (controller) => IndexedStack(
          index: controller.selectedIndex.value,
          children: [
            MyHomeScreen(),
            TableMatersScreen(),
            TableDocFieldsScreen(),
            QuizzScreen(),
            const ShopPage(),
            const Profile(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: kMyGreyColor,
            // borderRadius: const BorderRadius.all(
            //   Radius.circular(60),
            // ),
          ),
          padding: const EdgeInsets.all(
            12,
          ),
          child: GetX<BottomNavBarController>(
            init: BottomNavBarController(),
            //initState: (_) {},
            builder: (_) {
              return GNav(
                padding: const EdgeInsets.all(
                  12,
                ),
                backgroundColor: kMyGreyColor,
                gap: 8, // the tab button gap between icon and text
                activeColor: Colors.black, // selected icon and text color

                tabBackgroundColor: Colors.white,
                // .withOpacity(0.1), // selected tab background color
                tabActiveBorder: Border.all(
                    color: Colors.white, width: .5), // tab button border
                tabs: const [
                  GButton(
                    icon: Icons.home_filled,
                    iconColor: Colors.grey,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.play_circle_fill,
                    iconColor: Colors.grey,
                    text: 'Séances',
                  ),
                  GButton(
                    icon: Icons.file_present,
                    iconColor: Colors.grey,
                    text: 'Docs',
                  ),
                  GButton(
                    icon: Icons.quiz_sharp,
                    iconColor: Colors.grey,
                    text: 'Quizz',
                  ),
                  GButton(
                    icon: Icons.shopify,
                    iconColor: Colors.grey,
                    text: 'Shop',
                  ),
                  GButton(
                    icon: Icons.person_sharp,
                    iconColor: Colors.grey,
                    text: 'Profile',
                  )
                ],

                selectedIndex: controller.selectedIndex.value,
                onTabChange: (index) {
                  controller.changeIndex(index);
                },
              );
            },
          )),
    );
  }
}

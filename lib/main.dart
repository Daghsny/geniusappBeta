import 'package:flutter/material.dart';
import 'package:geniusapp/DashBoard/View/dashboardscreen.dart';
import 'package:geniusapp/FakeUrl/test_url_screen.dart';
import 'package:geniusapp/QuizzONe/view/quizz_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'ProductSans',
        useMaterial3: true,
      ),

      // home: TestUrlScreen()
      home: DashboardPage(),
    );
  }
}

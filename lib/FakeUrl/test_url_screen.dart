import 'package:flutter/material.dart';
import 'package:geniusapp/DashBoard/View/dashboardscreen.dart';
import 'package:geniusapp/FakeUrl/test_url_controller.dart';
import 'package:geniusapp/OnBoard/View/onboarding_screen.dart';
import 'package:geniusapp/Services/colors.dart';
import 'package:get/get.dart';

class TestUrlScreen extends StatelessWidget {
  TestUrlScreen({super.key});
  final TestUrlController controller = Get.put(TestUrlController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMyGreyColor,
        title: const Text('Ngrok Url'),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                // width: 300,
                height: 80,
                child: TextField(
                  // onTap: () {},
                  controller: controller.txtFieldController,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: kMyGreyColor,
                    hintText: "Enter the Ngrok Server Please...",
                    suffixIcon: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.http,
                        color: Colors.white,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 100,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                controller.getTestUrl;
                Get.off(() => const  OboardScrenn());
                debugPrint(controller.getTestUrl());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white // textStyle: const TextStyle(),
                  ),
              child: const Text('Go'),
            ),
          )
        ],
      ),
    );
  }
}

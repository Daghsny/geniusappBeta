import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestUrlController extends GetxController {
  TextEditingController txtFieldController = TextEditingController();
  RxString testUrl = ''.obs;

  @override
  void onInit() {
    getTestUrl();
    super.onInit();
  }

  String getTestUrl() {
    testUrl.value = txtFieldController.text;
    return testUrl.value;
  }
}

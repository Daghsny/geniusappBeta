import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OboardController extends GetxController {
  PageController controller = PageController();
  
  RxInt selectedIndex = 0.obs;
      
  void changeIndex(int index) {
    selectedIndex.value = index;
    update();
  }
  
  // RxBool onLastPage = false.obs;

  // onPageChanged(index) {
  //   onLastPage = (index == 2).obs;
  // }

  void jumptopags() {
    controller.jumpToPage(2);
  }
}



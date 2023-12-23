import 'package:get/state_manager.dart';

class BottomNavBarController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void changeIndex( int index) {
    selectedIndex.value = index;
  }
}

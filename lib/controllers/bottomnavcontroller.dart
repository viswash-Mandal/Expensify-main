import 'package:get/get.dart';

class BottomNavController extends GetxController {
  // Initial index is 0
  var selectedIndex = 0.obs;

  // Method to change the index
  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}

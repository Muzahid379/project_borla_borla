import 'package:get/get.dart';

class UserActivityController extends GetxController {

  static UserActivityController get instance => Get.put(UserActivityController());
  final RxInt selectedIndex = 0.obs;

  void changeTab(int index) {
    selectedIndex.value = index;
  }
}

import 'package:get/get.dart';

class ActivityController extends GetxController {

  static ActivityController get instance => Get.put(ActivityController());
  final RxInt selectedIndex = 0.obs;

  void changeTab(int index) {
    selectedIndex.value = index;
  }
}

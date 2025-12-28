
import 'package:get/get.dart';

class EarningsController extends GetxController {
  /// 0 = Today, 1 = Weekly, 2 = Monthly
  final selectedTab = 2.obs;

  void changeTab(int index) {
    selectedTab.value = index;
  }
}

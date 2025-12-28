
import 'package:get/get.dart';
import 'package:project_borla/role/garbageCollector/earnings/earnings_screen.dart';
import 'package:project_borla/role/garbageCollector/home/driver_home_screen.dart';

import '../../../commonScreens/profile/profile_screen.dart';
import '../../../garbageCollector/activity/activity_screen.dart';

class MainNavController extends GetxController {
  final selectedIndex = 0.obs;

  final screens = [
    DriverHomeScreen(),
    ActivityScreen(),
    EarningsScreen(),
    ProfileScreen(),
  ];

  final labels = ['Home', 'Activity', 'Earning', 'Profile'];

  void changeTab(int index) {
    selectedIndex.value = index;
  }
}

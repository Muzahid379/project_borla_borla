import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:project_borla/features/auth/register_screen.dart';
import 'package:project_borla/screens/home-screens/home_screen_one.dart';
import 'package:project_borla/screens/onboarding-screen/onboarding_one.dart';
import 'package:project_borla/screens/scheduled-screens/schedule_ride_two.dart';
import 'package:project_borla/screens/search-place-screens/add_place_screen.dart';
import 'package:project_borla/screens/search-place-screens/edit_place.dart';
import 'package:project_borla/screens/search-place-screens/location_search_screen.dart';
import 'package:project_borla/screens/search-place-screens/saved_places_screen.dart';
import 'package:project_borla/screens/select_role_screen.dart';
import 'package:project_borla/screens/waste-screens/waste_category_screen.dart';
import 'package:project_borla/screens/waste-screens/waste_qty_screen.dart';

import '../screens/splash_screen.dart';

class AppRoute {
  //static const String  = "/imageViewer";
  //==========================================================================auth screens
  static const String splashScreen = "/splashScreen";
  static const String registerScreen = "/register";
  static const String onboard1 = "/onboard1";
  static const String role = "/role";
  static const String home = "/home";
  static const String savedPlaces = "/savedPlaces";
  static const String search = "/search";
  static const String wasteCategory = "/wasteCategory";
  static const String wasteQty = "/wasteQty";
  static const String addPlace = "/addPlace";

  static const String editPlace = "/editPlace";

  static const String today = "/today";

  static List<GetPage> pages = [
    GetPage(
        name: splashScreen,
        page: () => SplashScreen(),
        transition: Transition.rightToLeftWithFade),
    //===============================for creators================
    //===============================auth screen=========>
    GetPage(
        name: registerScreen,
        page: () => RegisterScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: onboard1,
        page: () => OnboardingOne(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: role,
        page: () => SelectRoleScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: home,
        page: () => HomeScreenOne(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: savedPlaces,
        page: () => SavedPlacesScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: search,
        page: () => LocationSearchScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: wasteCategory,
        page: () => WasteCategoryScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: wasteQty,
        page: () => WasteQtyScreen(),
        transition: Transition.rightToLeftWithFade),

    //===============================home screen=========>

    GetPage(
        name: addPlace,
        page: () => AddPlaceScreen(),
        transition: Transition.rightToLeftWithFade),

    GetPage(
        name: editPlace,
        page: () => EditPlace(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: today,
        page: () => ScheduleRideTwo(),
        transition: Transition.rightToLeftWithFade),
  ];
}
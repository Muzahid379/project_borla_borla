import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_borla/features/auth/forget_pass_screen.dart';
import 'package:project_borla/features/auth/login_screen.dart';
import 'package:project_borla/features/auth/register_screen.dart';
import 'package:project_borla/features/auth/set_pass_screen.dart';
import 'package:project_borla/screens/home-screens/home_screen_one.dart';
import 'package:project_borla/screens/home-screens/payment_screen.dart';
import 'package:project_borla/screens/home-screens/thank_you_screen.dart';
import 'package:project_borla/screens/info-screens/about_us_screen.dart';
import 'package:project_borla/screens/info-screens/notification_screen_copy.dart';
import 'package:project_borla/screens/info-screens/policy_screen.dart';
import 'package:project_borla/screens/info-screens/terms_and_conditions_screen.dart';
import 'package:project_borla/screens/location_picker_screen.dart';
import 'package:project_borla/screens/map-screens/map_screen_two.dart';
import 'package:project_borla/screens/onboarding-screen/onboarding_one.dart';
import 'package:project_borla/screens/onboarding-screen/onboarding_two.dart';
import 'package:project_borla/screens/scheduled-screens/cancel_ride_screen.dart';
import 'package:project_borla/screens/scheduled-screens/schedule_ride_two.dart';
import 'package:project_borla/screens/scheduled-screens/today_screen.dart';
import 'package:project_borla/screens/search-place-screens/add_place_screen.dart';
import 'package:project_borla/screens/search-place-screens/edit_place.dart';
import 'package:project_borla/screens/search-place-screens/location_search_screen.dart';
import 'package:project_borla/screens/search-place-screens/location_search_screen_two.dart';
import 'package:project_borla/screens/search-place-screens/saved_places_screen.dart';
import 'package:project_borla/screens/select_role_screen.dart';
import 'package:project_borla/screens/splash_screen.dart';
import 'package:project_borla/screens/waste-screens/waste_category_screen.dart';
import 'package:project_borla/screens/waste-screens/waste_qty_screen.dart';
import 'package:project_borla/utils/app_routes.dart';

import 'features/auth/otp_screen.dart';
import 'features/auth/otp_screen_two.dart';

import 'package:get/get.dart';

void main() {

  runApp(MyApp()) ;


}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(393, 852),
      builder: (context, child) {
        return GetMaterialApp(

          debugShowCheckedModeBanner: false,

           //initialRoute: '/notify',
          initialRoute: AppRoute.homeTwo,
          getPages: AppRoute.pages,


        );
      },
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_borla/features/auth/register_screen.dart';
import 'package:project_borla/role/commonScreens/profile/profile_screen.dart';
import 'package:project_borla/screens/home-screens/home_screen_one.dart';
import 'package:project_borla/screens/location_picker_screen.dart';
import 'package:project_borla/screens/search-place-screens/location_search_screen.dart';
import 'package:project_borla/screens/search-place-screens/saved_places_screen.dart';
import 'package:project_borla/screens/select_role_screen.dart';
import 'package:project_borla/screens/splash_screen.dart';

import 'role/garbageCollector/home/driver_home_screen.dart';
import 'screens/onboarding-screen/onboarding_one.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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

          // initialRoute: '/register',
          // initialRoute: '/search',

          getPages: [
            GetPage(
              name: '/',
              page: () => SplashScreen(),
              transition: Transition.fade,
            ),
            GetPage(
              name: '/register',
              page: () => RegisterScreen(),
              transition: Transition.fade,
            ),
            GetPage(
              name: '/onboard1',
              page: () => OnboardingOne(),
              transition: Transition.fade,
            ),
            GetPage(
              name: '/role',
              page: () => SelectRoleScreen(),
              transition: Transition.fade,
            ),
            GetPage(
              name: '/home',
              page: () => HomeScreenOne(),
              transition: Transition.fade,
            ),
            GetPage(
              name: '/savedPlaces',
              page: () => SavedPlacesScreen(),
              transition: Transition.fade,
            ),
            GetPage(
              name: '/map',
              page: () => LocationPickerScreen(),
              transition: Transition.fade,
            ),
            GetPage(
              name: '/search',
              page: () => LocationSearchScreen(),
              transition: Transition.fade,
            ),
          ],

          // Optional fallback
          home: DriverHomeScreen(),
        );
      },
    );
  }
}

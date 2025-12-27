import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_borla/features/auth/register_screen.dart';
import 'package:project_borla/role/commonScreens/profile/profile_screen.dart';
import 'package:project_borla/role/components/navBar/nav_bar.dart';
import 'package:project_borla/screens/home-screens/home_screen_one.dart';
import 'package:project_borla/screens/location_picker_screen.dart';
import 'package:project_borla/screens/search-place-screens/location_search_screen.dart';
import 'package:project_borla/screens/search-place-screens/saved_places_screen.dart';
import 'package:project_borla/screens/select_role_screen.dart';
import 'package:project_borla/screens/splash_screen.dart';

import 'language/app_translation.dart';
import 'language/language_service.dart';
import 'role/garbageCollector/earnings/earnings_screen.dart';
import 'role/garbageCollector/home/driver_home_screen.dart';
import 'screens/onboarding-screen/onboarding_one.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Locale savedLocale = await LanguageService.getLocale();

  runApp(MyApp(locale: savedLocale));
}

class MyApp extends StatefulWidget {
  final Locale? locale;

  const MyApp({super.key, this.locale});

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
          initialRoute: '/register',
          // initialRoute: '/search',
          translations: AppTranslations(),
          locale: widget.locale ?? const Locale('en', 'US'), // default language
          fallbackLocale: const Locale('en', 'US'),
          home: NavbarScreen(),
          // home: EarningsScreen(),
          // home: DriverHomeScreen(),
        );
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project_borla/features/auth/forget_pass_screen.dart';
import 'package:project_borla/features/auth/login_screen.dart';
import 'package:project_borla/features/auth/register_screen.dart';
import 'package:project_borla/features/auth/set_pass_screen.dart';
import 'package:project_borla/role/commonScreens/profile/profile_screen.dart';
import 'package:project_borla/screens/location_picker_screen.dart';
import 'package:project_borla/screens/onboarding-screen/onboarding_one.dart';
import 'package:project_borla/screens/onboarding-screen/onboarding_two.dart';
import 'package:project_borla/screens/splash_screen.dart';

import 'features/auth/otp_screen.dart';
import 'features/auth/otp_screen_two.dart';

void main() {
  runApp(MyApp());
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
      designSize: const Size(440, 960),

      child: GetMaterialApp(
        //home: SplashScreen() ,
        //home: RegisterScreen() ,
        //home: onboardingTwo(),
        // home: LocationPickerScreen(),
        home: ProfileScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

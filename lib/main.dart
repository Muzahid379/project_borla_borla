import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_borla/features/auth/forget_pass_screen.dart';
import 'package:project_borla/features/auth/login_screen.dart';
import 'package:project_borla/features/auth/register_screen.dart';
import 'package:project_borla/role/commonScreens/profile/profile_screen.dart';
import 'package:project_borla/role/components/navBar/nav_bar.dart';
import 'package:project_borla/screens/home-screens/home_screen_one.dart';
import 'package:project_borla/screens/home-screens/thank_you_screen.dart';
import 'package:project_borla/screens/location_picker_screen.dart';
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

import 'language/app_translation.dart';
import 'language/language_service.dart';


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

          // initialRoute: '/register',
          initialRoute: AppRoute.splashScreen,
          //home: ,

          getPages: [

            GetPage(name: '/', page: () => SplashScreen(), transition: Transition.fade),
            GetPage(name: '/register', page: () => RegisterScreen(), transition: Transition.fade),
            GetPage(name: '/onboard1', page: () => OnboardingOne(), transition: Transition.fade),
            GetPage(name: '/role', page: () => SelectRoleScreen(), transition: Transition.fade),
            GetPage(name: '/home', page: () => HomeScreenOne(), transition: Transition.fade),
            GetPage(name: '/savedPlaces', page: () => SavedPlacesScreen(), transition: Transition.fade),
            GetPage(name: '/map', page: () => LocationPickerScreen(), transition: Transition.fade),
            GetPage(name: '/search', page: () => LocationSearchScreen(), transition: Transition.fade),
            GetPage(name: '/wasteCategory', page: () => WasteCategoryScreen(), transition: Transition.fade),
            GetPage(name: '/wasteQty', page: () => WasteQtyScreen(), transition: Transition.fade),
            GetPage(name: '/addPlace', page: () => AddPlaceScreen(), transition: Transition.fade),
            GetPage(name: '/editPlace', page: () => EditPlace(), transition: Transition.fade),
            GetPage(name: '/today', page: () => ScheduleRideTwo(), transition: Transition.fade),
            GetPage(name: '/cancelRide', page: () => CancelRideScreen(), transition: Transition.fade),
            GetPage(name: '/thanks', page: () => ThankYouScreen(), transition: Transition.fade),
            GetPage(name: '/searchTwo', page: () => LocationSearchScreenTwo(), transition: Transition.fade),
            GetPage(name: '/homeTwo', page: () => HomeScreenOne(), transition: Transition.fade),


          ],

          //home: SplashScreen() ,
          //home: RegisterScreen() ,
          //home: onboardingTwo(),
          //home: LocationPickerScreen(),
          //debugShowCheckedModeBanner: false,
          translations: AppTranslations(),
          locale: widget.locale ?? const Locale('en', 'US'), // default language
          fallbackLocale: const Locale('en', 'US'),
          // home: NavbarScreen(),

        );
      },
    );
  }
}

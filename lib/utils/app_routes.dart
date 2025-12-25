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
  //=====================================================home catagory screen;
  // static const String spaWellnessScreen = "/spaWellnessScreen";
  // static const String discoverMaurlitiusScreen = "/discoverMaurlitiusScreen";
  // static const String hospitalityScreen = "/hospitalityScreen";
  // static const String activityScreen = "/activityScreen";
  // static const String gastronomyScreen = "/gastronomyScreen";
  // static const String helthServiceScreen = "/helthServiceScreen";
  // static const String taxiServiceScreen = "/taxiServiceScreen";
  // static const String bookingServiceScreen = "/bookingServiceScreen";
  // static const String livingServiceScreen = "/livingServiceScreen";
  // static const String investServiceScreen = "/investServiceScreen";
  // static const String realProperticeScreen = "/realProperticeScreen";
  // static const String productCatalogueScreen = "/productCatalogueScreen";
  // static const String detailsScreen = "/detailsScreen";
  // static const String notificationScreen = "/notificationScreen";
  // static const String supermarket = "/supermarket";
  // static const String hypermarkets = "/hypermarkets";
  // static const String shopMore = "/shopMore";
  // static const String paybills = "/paybills";
  // static const String happingScreen = "/happingScreen";
  //
  // //======================================================profile screens
  // static const String editProfileScreen = "/editProfileScreen";
  // static const String editVenueScreen = "/editVenueScreen";
  // static const String privacyPolicyScreen = "/privacyPolicyScreen";
  // static const String bookingScreen = "/bookingScreen";
  // static const String termConditionScreen = "/termConditionScreen";
  // static const String beVenueScreen = "/beVenueScreen";
  // static const String settingScreen = "/settingScreen";
  // static const String contactScreen = "/contactScreen";
  // static const String changePassScreen = "/changePassScreen";
  // static const String subscriptionScreen = "/subscriptionScreen";
  // //=====================================================================for creators
  //
  // //=====================================================================creators auth
  // static const String creatorSplashScreen = "/creatorSplashScreen";
  // static const String creatorOnboardingScreen = "/creatorOnboardingScreen";
  // static const String creatorBottomNavScreen = "/creatorBottomNavScreen";
  // static const String creatorSignUpChooserScreen =
  //     "/creatorSignUpChooserScreen";
  // static const String creatorSignInScreen = "/creatorSignInScreen";
  // static const String creatorSignUpScreen = "/creatorSignUpScreen";
  // static const String creatorOtpScreen = "/creatorOtpScreen";
  // static const String creatorForgetPassScreen = "/creatorForgetPassScreen";
  // static const String creatorResetPassScreen = "/creatorResetPassScreen";
  // static const String creatorCompleteProfileScreen =
  //     "/creatorCompleteProfileScreen";
  //
  // //=====================================================================creators home
  // static const String creatorNavBar = "/creatorNavBar";
  // static const String creatorHomeScreen = "/creatorHomeScreen";
  // static const String creatorStatisticScreen = "/creatorStatisticScreen";
  // static const String reportScreen = "/reportScreen";
  //
  // static const String notifiSubscription = "/notifiSubscription";
  // static const String notifiComunityScreen = "/notifiComunityScreen";
  // static const String uploadRecomendedVideo = "/uploadRecomendedVideo";
  // static const String accountRecoveryScreen = "/accountRecoveryScreen";
  // static const String happeningUPcomingScreen = "/happeningUPcomingScreen";

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
        page: () => onboardingOne(),
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
    // GetPage(
    //     name: creatorStatisticScreen,
    //     page: () => CreatorStatisticScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: reportScreen,
    //     page: () => CreatorReportScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: notifiSubscription,
    //     page: () => NotifiSubscription(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: notifiComunityScreen,
    //     page: () => NotifiComunityScreen(),
    //     transition: Transition.rightToLeftWithFade),
    //
    // //===============================auth screen=========>
    // GetPage(
    //     name: splashScreen,
    //     page: () => SplashScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: onboardingScreen,
    //     page: () => OnboardingScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: bottomNavScreen,
    //     page: () => CommonBottomNavBar(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: signUpChooserScreen,
    //     page: () => SigninSignupChooserScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: signInScreen,
    //     page: () => SignInScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: signUpScreen,
    //     page: () => SignUpScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: otpScreen,
    //     page: () => OtpScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: completeProfileScreen,
    //     page: () => CompleteProfileScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: forgetPassScreen,
    //     page: () => ForgetPasswordScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: resetPassScreen,
    //     page: () => ResetPassScreen(),
    //     transition: Transition.rightToLeftWithFade),
    //
    // GetPage(
    //     name: qrCodeScanner,
    //     page: () => QrCodeScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: subscriptionScreen,
    //     page: () => SubscriptionScreen(),
    //     transition: Transition.rightToLeftWithFade),
    //
    // //================================================auth screen================================>
    // GetPage(
    //     name: seeAllCatagoryScreen,
    //     page: () => SeeAllCatagoryScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: spaWellnessScreen,
    //     page: () => SpaWellnessScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: discoverMaurlitiusScreen,
    //     page: () => DiscoverMauritiusScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: hospitalityScreen,
    //     page: () => HospitalityScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: activityScreen,
    //     page: () => AcitivityScreen(),
    //     transition: Transition.rightToLeftWithFade),
    //
    // //================================================home screen================================>
    // GetPage(
    //     name: gastronomyScreen,
    //     page: () => GestronomyScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: happingScreen,
    //     page: () => HappingScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: helthServiceScreen,
    //     page: () => HelthServiceScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: taxiServiceScreen,
    //     page: () => TexiServiceScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: bookingServiceScreen,
    //     page: () => BookingReserveScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: livingServiceScreen,
    //     page: () => LivingServiceScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: investServiceScreen,
    //     page: () => InvestServiceScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: realProperticeScreen,
    //     page: () => RealStatePropertiesScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: productCatalogueScreen,
    //     page: () => ProductCatalogueScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: supermarket,
    //     page: () => Supermarkets(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: hypermarkets,
    //     page: () => Hypermarkets(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: shopMore,
    //     page: () => ShopeMore(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: paybills,
    //     page: () => PayBills(),
    //     transition: Transition.rightToLeftWithFade),
    //
    // GetPage(
    //     name: uploadRecomendedVideo,
    //     page: () => UploadRecomendedVideo(),
    //     transition: Transition.rightToLeftWithFade),
    //
    // //================================================profile screen================================>
    // GetPage(
    //     name: editProfileScreen,
    //     page: () => EditProfileScreens(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: editVenueScreen,
    //     page: () => EditVenueScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: bookingScreen,
    //     page: () => BookingScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: privacyPolicyScreen,
    //     page: () => PrivacyPolicyScreens(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: termConditionScreen,
    //     page: () => TermsConditions(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: settingScreen,
    //     page: () => SettingsScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: contactScreen,
    //     page: () => ContactScreens(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: beVenueScreen,
    //     page: () => BeVenueScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: changePassScreen,
    //     page: () => ChangePasswordScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: notificationScreen,
    //     page: () => NotificationScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: accountRecoveryScreen,
    //     page: () => AccountRecoverScreen(),
    //     transition: Transition.rightToLeftWithFade),
    // GetPage(
    //     name: happeningUPcomingScreen,
    //     page: () => HappeningUpcomingScreen(),
    //     transition: Transition.rightToLeftWithFade),
  ];
}
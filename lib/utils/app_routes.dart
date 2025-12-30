import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:project_borla/features/auth/register_screen.dart';
import 'package:project_borla/role/garbageCollector/activity/activity_screen.dart';
import 'package:project_borla/screens/booking-accepted-screen/booking_accepted_screen.dart';
import 'package:project_borla/screens/booking-requested-screen/booking_requested_screen.dart';
import 'package:project_borla/screens/home-screens/home_map_screen.dart';
import 'package:project_borla/screens/home-screens/home_screen_one.dart';
import 'package:project_borla/screens/home-screens/payment_screen.dart';
import 'package:project_borla/screens/home-screens/thank_you_screen.dart';
import 'package:project_borla/screens/info-screens/about_us_screen.dart';
import 'package:project_borla/screens/info-screens/notification_screen_copy.dart';
import 'package:project_borla/screens/info-screens/policy_screen.dart';
import 'package:project_borla/screens/info-screens/terms_and_conditions_screen.dart';
import 'package:project_borla/screens/map-screens/map_screen_two.dart';
import 'package:project_borla/screens/onboarding-screen/onboarding_one.dart';
import 'package:project_borla/screens/profile-screens/address_screen.dart';
import 'package:project_borla/screens/profile-screens/change_password_screen_copy.dart';
import 'package:project_borla/screens/profile-screens/edit_profile_screen_copy.dart';
import 'package:project_borla/screens/profile-screens/profile_screen_copy.dart';
import 'package:project_borla/screens/rider-searching-screen/rider_searching_screen.dart';
import 'package:project_borla/screens/scheduled-screens/cancel_ride_screen.dart';
import 'package:project_borla/screens/scheduled-screens/schedule_ride_two.dart';
import 'package:project_borla/screens/search-place-screens/add_place_screen.dart';
import 'package:project_borla/screens/search-place-screens/edit_place.dart';
import 'package:project_borla/screens/search-place-screens/location_search_screen.dart';
import 'package:project_borla/screens/search-place-screens/saved_places_screen.dart';
import 'package:project_borla/screens/select_role_screen.dart';
import 'package:project_borla/screens/waste-screens/waste_category_screen.dart';
import 'package:project_borla/screens/waste-screens/waste_qty_screen.dart';

import '../screens/confirm-location-screens/confirm_location_screen.dart';
import '../screens/search-place-screens/location_search_screen_two.dart';
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
  static const String payment = "/payment";
  static const String cancelRide  = "/cancelRide";
  static const String thanks = "/thanks";
  static const String searchTwo = "/searchTwo";
  static const String homeTwo = "/homeTwo";
  static const String mapTwo = "/mapTwo";
  static const String terms = "/terms";
  static const String about = "/about";
  static const String privacy = "/privacy";
  static const String notify = "/notify";
  static const String profile = "/profile";
  static const String editProfile = "/editProfile";
  static const String changePass = "/changePass";
  static const String address = "/address";
  static const String userHome = "/userHome";
  static const String userActivity = "/userActivity";
  static const String confirmLocation = "/confirmLocation";
  static const String riderSearch = "/riderSearch";
  static const String bookRequest = "/bookRequest";
  static const String bookAccepted = "/bookAccepted";



  static List<GetPage> pages = [
    GetPage(
        name: splashScreen,
        page: () => SplashScreen(),
        transition: Transition.rightToLeftWithFade),

    GetPage(
        name: registerScreen,
        page: () => RegisterScreen(),
        transition: Transition.rightToLeftWithFade),

    GetPage(
        name: payment,
        page: () => PaymentScreen(),
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
    GetPage(
        name: cancelRide,
        page: () => CancelRideScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: thanks,
        page: () => ThankYouScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: searchTwo,
        page: () =>  LocationSearchScreenTwo(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: homeTwo,
        page: () => HomeScreenOne(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: mapTwo,
        page: () => MapScreenTwo(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: terms,
        page: () => TermsOfConditions(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: about,
        page: () => AboutUsScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: privacy,
        page: () => PolicyScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: notify,
        page: () => NotificationsScreenCopy(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: profile,
        page: () => ProfileScreenCopy(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: editProfile,
        page: () => EditProfileScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: changePass,
        page: () => ChangePasswordScreen(),
        transition: Transition.rightToLeftWithFade),

    GetPage(
        name: address,
        page: () => AddressScreen(),
        transition: Transition.rightToLeftWithFade),

    GetPage(
        name: userHome,
        page: () => HomeMapScreen(),
        transition: Transition.rightToLeftWithFade),

    GetPage(
        name: userActivity,
        page: () => ActivityScreen(),
        transition: Transition.rightToLeftWithFade),

    GetPage(
        name: confirmLocation,
        page: () => ConfirmLocationScreen(),
        transition: Transition.rightToLeftWithFade),

    GetPage(
        name: riderSearch,
        page: () => RiderSearchingScreen(),
        transition: Transition.rightToLeftWithFade),

    GetPage(
        name: bookRequest,
        page: () => BookingRequestedScreen(),
        transition: Transition.rightToLeftWithFade),

    GetPage(
        name: bookAccepted,
        page: () => BookingAcceptedScreen(),
        transition: Transition.rightToLeftWithFade),

  ];



}


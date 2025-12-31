

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_borla/screens/home-screens/user-home-screens/user-controller/user_home_controller.dart';
import 'package:project_borla/utils/app_texts.dart';

import '../../../theme/app_color.dart';

import '../../bottom-sheets/current_location_sheet.dart';
import '../../bottom-sheets/search_location_sheet.dart';
import '../../gen/custom_assets/assets.gen.dart';
import '../../theme/custom_container_copy.dart';
import '../map-screens/common_map_copy.dart';
import '../profile-screens/profile_screen_copy.dart';
import '../search-place-screens/location_search_screen_two.dart';




class HomeMapScreen extends StatefulWidget {
  HomeMapScreen({super.key});

  @override
  State<HomeMapScreen> createState() => _HomeMapScreenState();
}

class _HomeMapScreenState extends State<HomeMapScreen> {
  final UserHomeController controller =
  Get.put(UserHomeController());

  void ShowCurrentLocationSheet (BuildContext context) {

    showModalBottomSheet(
      context: context,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      //showDragHandle: true,
      useSafeArea: true,
      builder: (context) => CurrentLocationSheet(),
    );

  }

  void showSearchLocationSheet (BuildContext context) {

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      barrierColor: Colors.transparent,
      //showDragHandle: true,
      useSafeArea: true,
      builder: (context) => SearchLocationSheet(),

    );


  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Future.microtask(() {
  //     ShowCurrentLocationSheet(context);
  //   },);
  //
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// MAP
          Positioned.fill(
            child: UserCommonMap(),
          ),

          /// TOP CONTENT
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () => Get.to(() => ProfileScreenCopy()),
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage:
                          NetworkImage(AppTexts.userProfilePic),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => Get.to(() => LocationSearchScreenTwo()),
                        child: CustomContainer(
                          color: AppColors.white,
                          borderRadius: 100,
                          padding: const EdgeInsets.all(16),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.black50,
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: const Offset(10, 7),
                            )
                          ],
                          child: Assets.icons.searchIcon
                              .image(height: 20, width: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// 🔥 PERSISTENT BOTTOM SHEET WITH ANIMATION
          Align(
            alignment: Alignment.bottomCenter,
            child: Obx(
                  () => AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (child, animation) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, 1),
                      end: Offset.zero,
                    ).animate(animation),
                    child: FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  );
                },
                child: controller.showSearchSheet.value
                    ? const SearchLocationSheet(
                  key: ValueKey('search'),
                )
                    : const CurrentLocationSheet(
                  key: ValueKey('current'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


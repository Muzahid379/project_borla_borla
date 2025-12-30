

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      ShowCurrentLocationSheet(context);
    },);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Google Map
          Positioned.fill(child: CommonMap()),

          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Row(

                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            //ShowCurrentLocationSheetTwo(context);
                            Get.to(()=>ProfileScreenCopy());
                          },
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(AppTexts.userProfilePic),
                            backgroundColor: Colors.grey.shade200,
                          ),
                        ),
                      ),

                      Spacer(),

                      InkWell(
                        onTap: () {
                          //ShowConfirmAddressSheet(context);

                          Get.to(()=>LocationSearchScreenTwo());

                        },
                        child: CustomContainer(
                          color: AppColors.white,
                            borderRadius: 100,
                            padding: EdgeInsets.all(16),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.black50,
                                blurRadius: 10,
                                spreadRadius: 5,
                                offset: Offset(10, 7)
                              )
                            ],
                            child: Assets.icons.searchIcon.image(height: 20, width: 20)),
                      )


                    ],

                  ),
                ),
                SizedBox(height: 300,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          //ShowSearchLocationSheet(context);
                          //Get.to(()=>LocationSearchScreen());
                        },
                        child: Card(
                          //color: Colors.amber,
                          child: Container(
                              height: 50,
                              width: 50,

                              //color: Colors.amber,
                              decoration: BoxDecoration(
                                //border: Border.all(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber
                              ),
                              child: Image.asset('assets/images/target.png')
                          ),
                        ),
                      ),
                    )
                  ],
                )


              ],
            ),
          )

        ],
      ),
    );
  }
}


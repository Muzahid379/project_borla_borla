

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:project_borla/screens/home-screens/user-home-screens/user-controller/user_home_controller.dart';
import 'package:project_borla/screens/home-screens/user-home-screens/user-innerwidget/application_review_dialog_copy.dart';
import 'package:project_borla/screens/home-screens/user-home-screens/user-innerwidget/job_request_card_copy.dart';
import 'package:project_borla/screens/home-screens/user-home-screens/user-innerwidget/pulsing_cycle_copy.dart';

import '../../../theme/app_color.dart';

import '../../theme/common_text_two.dart';
import '../../theme/custom_container_copy.dart';
import '../../utils/custom-gen-assets/assets.gen.dart';
import '../map-screens/common_map_copy.dart';


class HomeMapScreen extends StatefulWidget {
  HomeMapScreen({super.key});

  @override
  State<HomeMapScreen> createState() => _HomeMapScreenState();
}

class _HomeMapScreenState extends State<HomeMapScreen> {
  final DriverHomeController controller =
  Get.put(DriverHomeController());

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
                          },
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: const AssetImage('assets/images/emptyProfilePic.png'),
                            backgroundColor: Colors.grey.shade200,
                          ),
                        ),
                      ),

                      Spacer(),

                      InkWell(
                        onTap: () {
                          //ShowConfirmAddressSheet(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(2),

                          //color: Colors.white54,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white54,
                            border: Border.all(color: Colors.white, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 10,
                                spreadRadius: 2,
                                offset: const Offset(0, 4), // x, y
                              ),
                            ],


                          ),
                          child: ClipOval(

                            child: Icon(Icons.search, size: 52,color: Colors.grey.shade800,),

                          ),
                        ),
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


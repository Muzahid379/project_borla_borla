import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/screens/booking-accepted-screen/booking_accepted_screen.dart';
import 'package:project_borla/screens/choose-ride-screens/choose_ride_screen.dart';

import '../../features/auth/login_screen.dart';
import '../../role/garbageCollector/map/common_map.dart';
import '../home-screens/user_nav_bar.dart';
import '../select_role_screen.dart';

class BookingRequestedScreen extends StatefulWidget {
  const BookingRequestedScreen({super.key});

  @override
  State<BookingRequestedScreen> createState() => _BookingRequestedScreenState();
}

class _BookingRequestedScreenState extends State<BookingRequestedScreen> {


  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.dialog(
        AlertDialog(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),

          actions: [


            Stack(
              children: [
                Container(
                    height: 420,
                    width: 280,
                    child: Column(
                      children: [
                        SizedBox(height: 30,),

                        Image.asset('assets/images/orange_tick.png', scale: 0.9,),

                        SizedBox(height: 24,),

                        Text('Booking Requested!', style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600
                        ), ),

                        SizedBox(height: 20,),

                        Text("We've received your request for your", style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500
                        ), ),

                        //SizedBox(height: 30,),

                        Text("Borla to be picked up. We'll let...", style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500
                        ), ),



                        SizedBox(height: 36,),

                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: ElevatedButton(
                            onPressed: () {

                              Get.to(()=>ChooseRideScreen());

                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero, // important
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              //minimumSize: const Size(100, 50),
                              minimumSize: const Size( 50, 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(255, 214, 0, 1),
                                    Color.fromRGBO(255,149,0, 1),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.fromLTRB(40, 16, 40, 16),
                                child: const Text(
                                  'View My Rides',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16
                                    //fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox( height: 15),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),


                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 214, 0, 1),
                                  Color.fromRGBO(255,149,0, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.all(2), // border thickness
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(50, 30),
                                backgroundColor: Colors.white, // white button
                                shadowColor: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12), // inner radius
                                ),
                              ),
                              onPressed: () {
                                Get.to(()=>BookingAcceptedScreen());
                                //Get.to(()=>HomeScreenOne());
                              },
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(58, 14, 58, 14),

                                child: ShaderMask(
                                  shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      Color.fromRGBO(255, 214, 0, 1),
                                      Color.fromRGBO(255,149,0, 1),
                                    ],
                                  ).createShader(bounds),
                                  child: Text(
                                    'Back To Home',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17
                                    ),
                                  ),
                                ),


                              ),
                            ),
                          ),



                        ),

                      ],
                    )
                ),
              ],
            ),
          ],
        ),
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(child: CommonMap()),

          ],
        )
    );
  }
}

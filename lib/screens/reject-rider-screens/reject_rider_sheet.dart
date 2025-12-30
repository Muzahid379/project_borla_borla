import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/screens/rider-arrived-screens/rider_arrived_screen.dart';

import '../../widgets/gradient_button.dart';

class RejectRiderSheet extends StatefulWidget {
  const RejectRiderSheet({super.key});

  @override
  State<RejectRiderSheet> createState() => _RejectRiderSheetState();
}

class _RejectRiderSheetState extends State<RejectRiderSheet> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,

      children: [

        Container(
            height: 340,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),

            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 12),

                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),

                const SizedBox(height: 46),


                Text('Your Borla has been rejected', style: TextStyle(

                    fontSize: 22,

                    fontWeight: FontWeight.w500

                ),),

                //const SizedBox(height: 16),

                Padding(
                  padding: const EdgeInsets.fromLTRB(22,0,22,0),
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),


                Text("We're sorry, your booking request was", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                ),),

                Text("rejected by the driver. This may be due to a",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                ),),

                Text("change in plans.", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                ),),


                // Padding(
                //   padding: const EdgeInsets.all(22.0),
                //   child: GradientButton(
                //     text: 'Confirm Location',
                //     onPressed: () {
                //       //Get.to(OtpScreen());
                //       //Get.to(()=>WasteCategoryScreen());
                //     },
                //   ),
                // ),

                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [

                      Container(
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
                            minimumSize: const Size(100, 50),
                            backgroundColor: Colors.white, // white button
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14), // inner radius
                            ),
                          ),
                          onPressed: () {
                            //Get.to(()=> OnboardingTwo());
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(40, 14,40, 14),

                            child: ShaderMask(
                              shaderCallback: (bounds) => LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 214, 0, 1),
                                  Color.fromRGBO(255,149,0, 1),
                                ],
                              ).createShader(bounds),
                              child: Text(
                                'Back',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),


                      ElevatedButton(
                        onPressed: () {
                         Get.to(()=>RiderArrivedScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero, // important
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          minimumSize: const Size(100, 50),
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
                            padding: const EdgeInsets.fromLTRB(23, 16, 23, 16),
                            child: const Text(
                              'Find Another One',
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 17
                                //fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      )


                    ],

                  ),
                ),





              ],
            )


        ),
        Positioned(
          height: 90,
            width: 90,
            top: -50,
            right: 160,
            child: Image.asset('assets/images/user_cross.png')
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/role/garbageCollector/call/outgoing_call_screen.dart';
import 'package:project_borla/screens/chat-screen/chat_screen_copy.dart';
import 'package:project_borla/screens/ride-schedule-screens/ride_schedule_screen.dart';
import 'package:project_borla/theme/app_color.dart';

import '../../gen/custom_assets/assets.gen.dart';

class DriverInformationSheet extends StatefulWidget {
  const DriverInformationSheet({super.key});

  @override
  State<DriverInformationSheet> createState() => _DriverInformationSheetState();
}

class _DriverInformationSheetState extends State<DriverInformationSheet> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,

      children: [

        Container(
            height: 520,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),

            child: Column(

              children: [

                const SizedBox(height: 14),

                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),

                const SizedBox(height: 26),


                Text('Rider Information', style: TextStyle(

                    fontSize: 22,

                    fontWeight: FontWeight.w500

                ),),




                Padding(
                  padding: const EdgeInsets.fromLTRB(22,8,22,0),
                  child: Divider(
                    color: AppColors.gray200,
                    thickness: 1,
                  ),
                ),

                const SizedBox(height: 22),


                Container(
                padding: const EdgeInsets.all(3), // border thickness
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.amber,
                    width: 3,
                  ),
                ),
                child: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/emptyProfile.png'),
                ),
              ),

                SizedBox(height: 8,),

              Text('McKenna Thomas', style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 21,
                  fontWeight: FontWeight.w600
              )),

                SizedBox(height: 22,),

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  //SizedBox(width: 60,),

                  Column(
                    children: [
                      RiderCircleActionMod(
                        Assets.icons.starIcon.image(height: 30, width: 30)
                      ),
                      SizedBox(height: 8,),
                      Text('Rating', style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),

                      Text('4.8',  style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),

                 // SizedBox(width: 30,),

                  Column(
                    children: [
                      RiderCircleActionMod(
                          Assets.icons.scotterIcon.image(height: 30, width: 30)
                      ),
                      SizedBox(height: 8,),
                      Text('Rides', style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),),
                      Text('9,200',  style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),

                  //SizedBox(width: 30,),

                  Column(
                    children: [
                      RiderCircleActionMod(
                          Assets.icons.clockIcon.image(height: 30, width: 30)
                      ),
                      SizedBox(height: 8,),
                      Text('Member', style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),),
                      Text('3 years',  style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),


                ],


              ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                    Expanded(
                      child: SizedBox(
                      height: 48,
                      width: double.infinity, // takes full available width
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 214, 0, 1),
                              Color.fromRGBO(255, 149, 0, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.all(2), // gradient border thickness
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => OutgoingCallScreen());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            padding: EdgeInsets.zero, // important for exact height
                          ),
                          child: ShaderMask(
                            shaderCallback: (bounds) => const LinearGradient(
                              colors: [
                                Color.fromRGBO(255, 214, 0, 1),
                                Color.fromRGBO(255, 149, 0, 1),
                              ],
                            ).createShader(bounds),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/user_call.png',
                                  color: Colors.white,
                                  height: 20,
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  'Call',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                                      ),
                    ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => UserChattingScreen());
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              elevation: 0,
                              fixedSize: const Size.fromHeight(48), // 🔥 force height
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // 🔥 remove extra tap padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(255, 214, 0, 1),
                                    Color.fromRGBO(255, 149, 0, 1),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: SizedBox.expand( // 🔥 forces Ink to fill button
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/user_msg.png',
                                      color: Colors.white,
                                      height: 20,
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      'Chat',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                            ],

                  ),
                ),

              /// Padding(
                //   padding: const EdgeInsets.fromLTRB(20,8,20,8,),
                //   child: userRowMod(),
                // ),
                //
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(22,0,22,0),
                //   child: Divider(
                //     color: Colors.grey.shade300,
                //     thickness: 1,
                //   ),
                // ),
                //
                // Padding(
                //   padding: const EdgeInsets.all(20.0),
                //   child: summarySection(),
                // ),
                //
                //
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(22,0,22,0),
                //   child: Divider(
                //     color: Colors.grey.shade300,
                //     thickness: 1,
                //   ),
                // ),
                //
                //
                // Padding(
                //   padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                //   child: userPaymentRow(),
                // ),
                //
                //
                // Padding(
                //   padding: const EdgeInsets.all(22.0),
                //   child: GradientButton(
                //     text: 'Pay Now',
                //     onPressed: () {
                //       //Get.to(()=> RiderSearchingScreen());
                //     },
                //   ),
                // ),


              ],
            )


        ),
        // Positioned(
        //     height: 90,
        //     width: 90,
        //     top: -50,
        //     right: 160,
        //     child: Image.asset('assets/images/user_large_pin.png')
        // ),
      ],
    );
  }

  Widget RiderCircleActionMod(Image icon) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.amber),
      ),
      child: Center(child: icon),
    );
  }



}

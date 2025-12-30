import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/screens/choose-payment-screens/choose_payment_screen.dart';
import 'package:project_borla/screens/scheduled-screens/schedule_ride_two.dart';

import '../screens/rider-searching-screen/rider_searching_screen.dart';
import '../widgets/gradient_button.dart';

class ChooseRideSheet extends StatefulWidget {
  const ChooseRideSheet({super.key});

  @override
  State<ChooseRideSheet> createState() => _ChooseRideSheetState();
}

class _ChooseRideSheetState extends State<ChooseRideSheet> {


  int index1 = 1 ;
  int index2 = 2 ;
  int index3 = 3 ;
  int index4 = 4 ;
  int selectedIndex = -1 ;


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          //color: Color.fromRGBO(255, 237, 176, 1),
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

            const SizedBox(height: 16),


            Text('Choose a ride', style: TextStyle(

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

            SizedBox(height: 20,),

            InkWell(
              onTap: () {

                setState(() {

                  selectedIndex = index1 ;

                });

              } ,
              child: Container(
                height: 80,
                width: 370,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: selectedIndex == index1? Colors.amber : Colors.grey.shade100,
                      width: selectedIndex == index1 ? 2 : 2
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/images/tiles_icon.png'),
                    ),
                    Column(

                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Tri Cycle', style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/clock.png'),
                            SizedBox(width: 3,),
                            Text('30-45 m', style: TextStyle(
                                fontWeight: FontWeight.w400
                            ),),
                            SizedBox(width: 10,),
                            Image.asset('assets/images/walk.png'),
                            SizedBox(width: 3,),
                            Text('22 km', style: TextStyle(
                                fontWeight: FontWeight.w400
                            ),),
                            SizedBox(width: 10,),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 40),
                      child: Text('GHC 50', style: TextStyle(
                          color: Colors.amber,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),),
                    )


                  ],
                ),

              ),
            ),

            SizedBox(height: 12,),

            InkWell(
              onTap: () {

                setState(() {

                  selectedIndex = index2 ;

                });

              },
              child: Container(
                height: 80,
                width: 370,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: selectedIndex == index2? Colors.amber : Colors.grey.shade100,
                      width: selectedIndex == index2 ? 2 : 2
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/images/tiles_icon.png'),
                    ),
                    Column(

                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Tri Cycle', style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/clock.png'),
                            SizedBox(width: 3,),
                            Text('40-45 m', style: TextStyle(
                                fontWeight: FontWeight.w400
                            ),),
                            SizedBox(width: 10,),
                            Image.asset('assets/images/walk.png'),
                            SizedBox(width: 3,),
                            Text('25 km', style: TextStyle(
                                fontWeight: FontWeight.w400
                            ),),
                            SizedBox(width: 10,),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 40),
                      child: Text('GHC 55', style: TextStyle(
                          color: Colors.amber,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),),
                    )


                  ],
                ),

              ),
            ),
            SizedBox(height: 12,),
            InkWell(
              onTap: () {

                setState(() {

                  selectedIndex = index3 ;

                });

              },
              child: Container(
                height: 80,
                width: 370,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: selectedIndex == index3? Colors.amber : Colors.grey.shade100,
                      width: selectedIndex == index3 ? 2 : 2
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/images/tiles_icon.png'),
                    ),
                    Column(

                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Tri Cycle', style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/clock.png'),
                            SizedBox(width: 3,),
                            Text('40-45 m', style: TextStyle(
                                fontWeight: FontWeight.w400
                            ),),
                            SizedBox(width: 10,),
                            Image.asset('assets/images/walk.png'),
                            SizedBox(width: 3,),
                            Text('25 km', style: TextStyle(
                                fontWeight: FontWeight.w400
                            ),),
                            SizedBox(width: 10,),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 40),
                      child: Text('GHC 55', style: TextStyle(
                          color: Colors.amber,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),),
                    )


                  ],
                ),

              ),
            ),
            SizedBox(height: 12,),
            InkWell(
              onTap: () {

                setState(() {

                  selectedIndex = index4 ;

                });

              },
              child: Container(
                height: 80,
                width: 370,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: selectedIndex == index4? Colors.amber : Colors.grey.shade100,
                    width: selectedIndex == index4 ? 2 : 2
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/images/tiles_icon.png'),
                    ),
                    Column(

                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Tri Cycle', style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/clock.png'),
                            SizedBox(width: 3,),
                            Text('45-50 m', style: TextStyle(
                                fontWeight: FontWeight.w400
                            ),),
                            SizedBox(width: 10,),
                            Image.asset('assets/images/walk.png'),
                            SizedBox(width: 3,),
                            Text('27 km', style: TextStyle(
                                fontWeight: FontWeight.w400
                            ),),
                            SizedBox(width: 10,),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 40),
                      child: Text('GHC 60', style: TextStyle(
                          color: Colors.amber,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),),
                    )


                  ],
                ),

              ),
            ),


            SizedBox(height: 24,),



            Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [




                ElevatedButton(
                  onPressed: () {
                    Get.to(()=>RiderSearchingScreen());
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
                      padding: const EdgeInsets.fromLTRB(90, 16, 90, 16),
                      child: const Text(
                        'Book Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                          //fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),

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
                      minimumSize: const Size(40, 20),
                      backgroundColor: Colors.white, // white button
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14), // inner radius
                      ),
                    ),
                    onPressed: () {
                      Get.to(()=> ScheduleRideTwo());
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),

                      child: ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 214, 0, 1),
                            Color.fromRGBO(255,149,0, 1),
                          ],
                        ).createShader(bounds),
                        // child: Text(
                        //   'Skip',
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontWeight: FontWeight.w600,
                        //   ),
                        // ),
                        child: Icon(Icons.calendar_month, color: Colors.amber, size: 30,),
                      ),
                    ),
                  ),
                ),


              ],

            ),






            // Padding(
            //       padding: const EdgeInsets.all(22.0),
            //       child: GradientButton(
            //         text: 'Book Now',
            //         onPressed: () {
            //           Get.to(()=>ChoosePaymentScreen());
            //           //Navigator.pop(context);
            //           //ShowPaymentSheet(context);
            //
            //
            //
            //         },
            //       ),
            //     ),






          ],
        )


    );
  }
}

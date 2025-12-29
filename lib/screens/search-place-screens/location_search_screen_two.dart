import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../widgets/custom_text_field.dart';
import '../confirm-location-screens/confirm_location_screen.dart';
import '../profile-screens/profile_screen_copy.dart';

class LocationSearchScreenTwo extends StatefulWidget {
  const LocationSearchScreenTwo({super.key});

  @override
  State<LocationSearchScreenTwo> createState() => _LocationSearchScreenTwoState();
}

class _LocationSearchScreenTwoState extends State<LocationSearchScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(

          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.fitWidth,
                //alignment: Alignment.topRight,
              ),
            ),
            Padding(
              //padding: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.fromLTRB(22, 72, 22, 22),
              child: Column(
                children: [

                  Padding(
                    //padding: const EdgeInsets.fromLTRB(26, 70, 20, 20),
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 38,
                          height: 38,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6,
                                offset: const Offset(0, 2),
                                color: Colors.black.withAlpha(40),
                              ),
                            ],
                          ),

                          child: IconButton(
                            padding: EdgeInsets.zero,
                            iconSize: 22,
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {},
                          ),
                        ),

                        SizedBox(width: 66),

                        Text('Search Address', style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                  ),

                  SizedBox(height: 36),

                  CustomTextField(
                    hint: '2nd Crescent Link, Ghana',
                    prefix: Image.asset('assets/images/fourth_pin.png'),
                    suffix: Image.asset('assets/images/cross.png'),

                  ),

                  SizedBox(height: 14),

                  Row(
                    children: [

                      Container(
                        width: 160,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey.shade500,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 8,
                            ),
                            side: const BorderSide(
                              color: Colors.black12,
                              width: 1,
                            ),

                          ),

                          child: Row(
                            children: [
                              Image.asset('assets/images/tab_icon_one.png', scale: 0.9,),
                              SizedBox(width: 6,),
                              Text('Select from map', style: TextStyle(

                                  fontSize: 15

                              ),)
                            ],
                          ),
                        ),
                      ),



                      SizedBox(width: 12),

                      Container(
                        width: 140,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey.shade500,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 8,
                            ),
                            side: const BorderSide(
                              color: Colors.black12,
                              width: 1,
                            ),

                          ),
                          child: Row(
                            children: [
                              Image.asset('assets/images/saved_icon.png', scale: 0.9,),
                              SizedBox(width: 6,),
                              Text('Saved Places', style: TextStyle(

                                  fontSize: 15

                              ),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 22),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Recent Places', style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54
                      ),),


                      SizedBox(width: 26),

                      Text('Clear All', style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.amber,
                      ),),

                    ],
                  ),

                  SizedBox(height: 26),
                  InkWell(
                    onTap: (){
                      Get.to(()=>ConfirmLocationScreen());
                    },
                    child: Container(
                      height: 100,
                      width: 340,
                      decoration: BoxDecoration(

                      ),
                      child: Column(
                        children: [
                          Row(

                            children: [
                              Image.asset('assets/images/clock.png', scale:  0.8),
                              SizedBox(width: 8,),
                              Text('Office', style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              ),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('2910 Parker Rd. AllenTown, New Mexico 31134' ,style: TextStyle(
                            color: Colors.grey.shade500,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                            )),
                          )

                        ],
                      ),

                    ),
                  ),




                  Container(
                    height: 100,
                    width: 340,
                    decoration: BoxDecoration(

                    ),
                    child: Column(
                      children: [
                        Row(

                          children: [
                            Image.asset('assets/images/clock.png', scale:  0.8),
                            SizedBox(width: 8,),
                            Text('Shopping Mall', style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('2910 Parker Rd. AllenTown, New Mexico 31134' ,style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          )),
                        )

                      ],
                    ),

                  ),
                  Container(
                    height: 100,
                    width: 340,
                    decoration: BoxDecoration(

                    ),
                    child: Column(
                      children: [
                        Row(

                          children: [
                            Image.asset('assets/images/clock.png', scale:  0.8),
                            SizedBox(width: 8,),
                            Text('Shopping Mall', style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('2910 Parker Rd. AllenTown, New Mexico 31134' ,style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          )),
                        )

                      ],
                    ),

                  ),
                  Container(
                    height: 100,
                    width: 340,
                    decoration: BoxDecoration(

                    ),
                    child: Column(
                      children: [
                        Row(

                          children: [
                            Image.asset('assets/images/clock.png', scale:  0.8),
                            SizedBox(width: 8,),
                            Text('Coffee Shop', style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('2910 Parker Rd. AllenTown, New Mexico 31134' ,style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          )),
                        )

                      ],
                    ),

                  ),

                  //Image.asset('assets/images/not_found.png'),










                ],
              ),
            )

          ],
        )
    );
  }
}

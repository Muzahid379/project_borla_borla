import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/helpers/other_helper.dart';
import 'package:project_borla/screens/finding-driver-screens/finding_driver_screen.dart';

import '../../widgets/custom_text_field.dart';
import '../../widgets/gradient_button.dart';

class WasteQtyScreen extends StatefulWidget {
  const WasteQtyScreen({super.key});

  @override
  State<WasteQtyScreen> createState() => _WasteQtyScreenState();
}

class _WasteQtyScreenState extends State<WasteQtyScreen> {
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
              padding: const EdgeInsets.fromLTRB(22, 68, 22, 22),
              child: Column(
                children: [

                  Padding(
                    //padding: const EdgeInsets.fromLTRB(26, 70, 20, 20),
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          //padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
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
                            onPressed: () {
                              Get.back();
                            },
                          ),
                        ),

                        SizedBox(width: 70),

                        Text('Waste Quantity', style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                  ),

                  SizedBox(height: 34),

                  Row(
                    children: [
                      Text('Waste Image', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700
                      )),
                      Spacer(),
                      Text('Helps estimate size accurately', style: TextStyle(

                        letterSpacing: 0.0001,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500,

                      ),),

                    ],
                  ),

                  SizedBox(height: 20),



                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        InkWell(
                          onTap: (){
                            OtherHelper.openGallery();
                          },
                          child: Image.asset(
                            'assets/images/camera_btn.png',
                            scale: 0.8,
                          ),
                        ),

                        const SizedBox(height: 40),

                        Text('Bin Size', style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          color: Colors.grey.shade600
                        ),),

                        const SizedBox(height: 10),

                        CustomTextField(
                          hint: 'Bin Size',
                          prefix: Image.asset('assets/images/second_pin.png'),
                        ),

                        const SizedBox(height: 14),
                        Text('Bin Quantity', style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.grey.shade600
                        ),),

                        const SizedBox(height: 10),

                        CustomTextField(
                          hint: 'Bin Quantity',
                          prefix: Image.asset('assets/images/second_pin.png'),
                        ),

                        const SizedBox(height: 14),
                        Text('Waste Size', style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.grey.shade600
                        ),),

                        const SizedBox(height: 10),

                        CustomTextField(
                          hint: 'Waste Size',
                          prefix: Image.asset('assets/images/second_pin.png'),
                        ),

                        //const SizedBox(height: 14),

                        SizedBox(height: 40),

                        GradientButton(
                          text: 'Continue',
                          onPressed: () {
                            Get.to(()=>FindingDriverScreen());
                          },
                        ),


                      ]

                  ),

                ],
              ),
            ),


          ],
        )


    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/screens/rider-searching-screen/rider_searching_screen.dart';

import '../screens/waste-screens/waste_category_screen.dart';
import '../widgets/gradient_button.dart';

class PaymentSheet extends StatefulWidget {
  const PaymentSheet({super.key});

  @override
  State<PaymentSheet> createState() => _PaymentSheetState();
}

class _PaymentSheetState extends State<PaymentSheet> {

  int selectedIndex = -1 ;
  int index1 = 1 ;
  int index2 = 2 ;

  // Widget buildCategoryCard({
  //   required int index,
  //   required String image,
  // }) {
  //   final bool isSelected = selectedIndex == index;
  //
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         selectedIndex = index;
  //       });
  //     },
  //     child: CustomPaint(
  //       painter: isSelected
  //           ? GradientBorderPainter(
  //         strokeWidth: 2, // 👈 ultra-thin
  //         radius: 12,
  //         gradient: LinearGradient(
  //           begin: Alignment.centerLeft,
  //           end: Alignment.centerRight ,
  //           colors: [
  //             Color(0xFFFFC107),
  //             Color(0xFFFF9800),
  //           ],
  //         ),
  //       )
  //           : GradientBorderPainter(
  //         strokeWidth: 1, // 👈 ultra-thin
  //         radius: 12,
  //         gradient: LinearGradient(
  //           colors: [
  //             Colors.yellow,
  //             Colors.yellow,
  //           ],
  //         ),
  //       ),
  //       child: Card(
  //         elevation: 0,
  //         color: Colors.white,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(12),
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.fromLTRB(30, 10, 30, 16),
  //           child: Image.asset(image, scale: 0.9),
  //         ),
  //       ),
  //     ),
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Container(
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

            const SizedBox(height: 16),


            Text('Choose Payment Method', style: TextStyle(

                fontSize: 22,

                fontWeight: FontWeight.w500

            ),),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.fromLTRB(22,0,22,0),
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            ),

            const SizedBox(height: 16),


           Padding(
                padding: const EdgeInsets.fromLTRB(22,6,22,6),
                child: Row(

                  children: [

                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index1 ;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: selectedIndex == index1 ? Colors.amber : Colors.grey.shade300,
                              width: 1.5
                          )
                        ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(38, 10, 38, 10),
                            child: Image.asset('assets/images/momo.png', scale: 0.9,),
                          )
                      ),
                    ),

                    // buildCategoryCard(
                    //     index: 0, image: 'assets/images/momo.png',
                    // ),




                    SizedBox(width: 16,),

                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index2 ;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: selectedIndex == index2 ? Colors.amber : Colors.grey.shade300,
                                width: 1.5
                              ),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(38, 10, 38, 10),
                            child: Image.asset('assets/images/cash.png', scale: 0.9,),
                          )
                      ),
                    ),

                    // buildCategoryCard(
                    //   index: 0, image: 'assets/images/cash.png',
                    // ),


                    // Text('Home', style: TextStyle(
                    //
                    //   fontSize: 18,
                    //   fontWeight: FontWeight.w500,
                    //
                    //
                    // ),),
                    // Spacer(),

                    //Image.asset('assets/images/add_button.png'),



                  ],


                ),
              ),


            // Text('1901 Thornridge Cir. Shiloh, Hawaii 81063 ', style: TextStyle(
            //     fontSize: 15,
            //     fontWeight: FontWeight.w600,
            //     color: Colors.grey
            // ),),


            Padding(
              padding: const EdgeInsets.all(22.0),
              child: GradientButton(
                text: 'Continue',
                onPressed: () {
                  Get.to(()=> RiderSearchingScreen());
                },
              ),
            ),





          ],
        )


    );
  }
}

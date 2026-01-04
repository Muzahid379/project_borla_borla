import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/screens/waste-screens/waste_qty_screen.dart';

import '../../bottom-sheets/user_lang_sheet.dart';
import '../../widgets/gradient_button.dart';

class WasteCategoryScreen extends StatefulWidget {
  const WasteCategoryScreen({super.key});

  @override
  State<WasteCategoryScreen> createState() => _WasteCategoryScreenState();
}

class _WasteCategoryScreenState extends State<WasteCategoryScreen> {


  int selectedIndex = -1;


  Widget buildCategoryCard({
    required int index,
    required String image,
    required String label,
    required double scale,
  }) {
    final bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: CustomPaint(
        painter: isSelected
            ? GradientBorderPainter(
          strokeWidth: 2, // 👈 ultra-thin
          radius: 12,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight ,
            colors: [
              Color(0xFFFFC107),
              Color(0xFFFF9800),
            ],
          ),
        )
            : GradientBorderPainter(
          strokeWidth: 1, // 👈 ultra-thin
          radius: 12,
          gradient: LinearGradient(
            colors: [
              Colors.yellow,
              Colors.yellow,
            ],
          ),
        ),
        child: Container(
          //padding: EdgeInsets.all(10),
          //margin: EdgeInsets.all(2),
          height: 170,
          width: 177,
          //elevation: 0,
          //color: Colors.white,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(12),
          // ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            //color: Colors.white
          ),
          child: Padding(
            //padding: const EdgeInsets.fromLTRB(30, 10, 30, 16),
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(
              children: [
                Image.asset(image, scale: scale,),
                SizedBox(height: 6,),
                Text(label, style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 16,
                  fontWeight: FontWeight.w800
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allows full height if needed
      backgroundColor: Colors.transparent,
      builder: (context) => const UserLanguageSelectionBottomSheet(),
    );
  }


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
              padding: const EdgeInsets.fromLTRB(20, 68, 17, 22),
              child: Column(
                children: [

                  Padding(
                    //padding: const EdgeInsets.fromLTRB(26, 70, 20, 20),
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
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

                        SizedBox(width: 40),

                        Text('Select Waste Category', style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                  ),

                  SizedBox(height: 22),

                  Column(
                    children: [
                      Row(

                        children: [

                          buildCategoryCard(
                            index: 0,
                            image: 'assets/images/organic_2.png',
                            label: 'Organic',
                            scale: 4.3
                          ),

                          SizedBox(width: 18),


                          buildCategoryCard(
                            index: 1,
                            image: 'assets/images/metal_2.png',
                              label: 'Metal',
                              scale: 4.3
                          ),

                        ],


                      ),
                      SizedBox(height: 18),
                      Row(

                        children: [


                          buildCategoryCard(
                            index: 2,
                            image: 'assets/images/plastic_2.png',
                              label: 'Plastic',
                              scale: 7.5
                          ),

                          const SizedBox(width: 18),

                          buildCategoryCard(
                            index: 3,
                            image: 'assets/images/general_2.png',
                              label: 'General',
                              scale: 4.3
                          ),



                        ],


                      ),
                      SizedBox(height: 18),
                      Row(

                        children: [



                          buildCategoryCard(
                            index: 4,
                            image: 'assets/images/paper_2.png',
                              label: 'Paper',
                              scale: 7.5
                          ),

                          SizedBox(width: 18),


                        ],



                      ),

                      SizedBox(height: 40),

                      GradientButton(
                        text: 'Continue',
                        onPressed: () {
                          Get.to(WasteQtyScreen());
                          //showLanguageBottomSheet(context);
                        },
                      ),

                    ],
                  )


                ],
              ),
            )

          ],
        )
    );
  }
}

class GradientBorderPainter extends CustomPainter {
  final Gradient gradient;
  final double strokeWidth;
  final double radius;

  GradientBorderPainter({
    required this.gradient,
    required this.strokeWidth,
    required this.radius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;

    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final rRect = RRect.fromRectAndRadius(
      rect.deflate(strokeWidth / 2),
      Radius.circular(radius),
    );

    canvas.drawRRect(rRect, paint);
  }

  @override
  bool shouldRepaint(covariant GradientBorderPainter oldDelegate) {
    return oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.gradient != gradient;
  }

}


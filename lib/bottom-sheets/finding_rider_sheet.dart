import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/screens/choose-ride-screens/choose_ride_screen.dart';

import '../theme/ripple.dart';

class FindingRiderSheet extends StatefulWidget {
  const FindingRiderSheet({super.key});

  @override
  State<FindingRiderSheet> createState() => _FindingRiderSheetState();
}

class _FindingRiderSheetState extends State<FindingRiderSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(

        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),

      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: Column(
          children: [

            const SizedBox(height: 12),

            // 👇 Custom handle INSIDE
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(2),
              ),
            ),

            const SizedBox(height: 16),


            Text('Finding you a nearby driver...', style: TextStyle(

                fontSize: 22,

                fontWeight: FontWeight.w500

            ),),

            const SizedBox(height: 16),

            Text('The driver will pick you up as soon as possible after', style: TextStyle(

                fontSize: 16,

                fontWeight: FontWeight.w500,
                color: Colors.grey
            ),),

            Text('they confirm your order', style: TextStyle(

                fontSize: 16,

                fontWeight: FontWeight.w500,
                color: Colors.grey
            ),),


            RippleAnimation(),

            SizedBox(height: 20,),

            Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
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
                  Get.to(()=>ChooseRideScreen());
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(120, 14, 120, 14),

                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),



    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/screens/booking-requested-screen/booking_requested_screen.dart';

import '../../role/garbageCollector/map/common_map.dart';

class RiderSearchingScreen extends StatefulWidget {
  const RiderSearchingScreen({super.key});

  @override
  State<RiderSearchingScreen> createState() => _RiderSearchingScreenState();
}

class _RiderSearchingScreenState extends State<RiderSearchingScreen> {



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
                 height: 140,
                 width: 240,
                 child: Column(
                   children: [
                     SizedBox(height: 30,),
                     SizedBox(
                       height: 60,
                       width: 60,
                       child: CircularProgressIndicator(
                         strokeWidth: 6,
                         color: Colors.amber,
                       ),
                     ),
                     SizedBox(height: 20,),
                     Text('Processing...', style: TextStyle(
                       color: Colors.grey.shade800,
                       fontSize: 18,
                       fontWeight: FontWeight.w500
                     ),)
                   ],
                 )
               ),
             ],
           ),
          ],
        ),
      );
    });
    Future.delayed(const Duration(seconds: 5), () {
      if (Get.isDialogOpen == true) {
        Get.back(); // close dialog
      }
      Get.offAll(() => const BookingRequestedScreen());
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

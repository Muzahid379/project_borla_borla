import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../role/garbageCollector/map/common_map.dart';

class RiderSearchingScreen extends StatefulWidget {
  const RiderSearchingScreen({super.key});

  @override
  State<RiderSearchingScreen> createState() => _RiderSearchingScreenState();
}

class _RiderSearchingScreenState extends State<RiderSearchingScreen> {

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Future.microtask(() {
  //     //ShowConfirmAddressSheet(context);
  //
  //
  //
  //
  //   },);
  //
  // }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Get.dialog(
        AlertDialog(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          // title: const Text('Delete item'),
          // content: const Text('Are you sure you want to delete this item?'),
          actions: [
            // TextButton(
            //   onPressed: () => Get.back(), // close dialog
            //   child: const Text('Cancel'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     // your action
            //     Get.back();
            //   },
            //   child: const Text('Delete'),
            // ),



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

import 'package:flutter/material.dart';
import 'package:project_borla/screens/rider-arrived-screens/rider_arrived_sheet.dart';

import '../../role/garbageCollector/map/common_map.dart';

class RiderArrivedScreen extends StatefulWidget {
  const RiderArrivedScreen({super.key});

  @override
  State<RiderArrivedScreen> createState() => _RiderArrivedScreenState();
}

class _RiderArrivedScreenState extends State<RiderArrivedScreen> {



  void ShowRiderArrivedSheet (BuildContext context) {

    showModalBottomSheet(

      context: context,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      //showDragHandle: true,
      useSafeArea: true,
      builder: (context) => RiderArrivedSheet(),

    );

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      ShowRiderArrivedSheet(context);
    },);

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

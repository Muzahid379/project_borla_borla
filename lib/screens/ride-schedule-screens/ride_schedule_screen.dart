import 'package:flutter/material.dart';
import 'package:project_borla/screens/ride-schedule-screens/ride_schedule_sheet.dart';

import '../../role/garbageCollector/map/common_map.dart';

class RideScheduleScreen extends StatefulWidget {
  const RideScheduleScreen({super.key});

  @override
  State<RideScheduleScreen> createState() => _RideScheduleScreenState();
}

class _RideScheduleScreenState extends State<RideScheduleScreen> {


  void ShowRideScheduleSheet (BuildContext context) {

    showModalBottomSheet(

      context: context,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      //showDragHandle: true,
      useSafeArea: true,
      builder: (context) => RideScheduleSheet(),

    );

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      ShowRideScheduleSheet(context);
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

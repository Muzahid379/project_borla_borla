import 'package:flutter/material.dart';
import 'package:project_borla/screens/reject-rider-screens/reject_rider_sheet.dart';

import '../../role/garbageCollector/map/common_map.dart';

class RejectRiderScreen extends StatefulWidget {
  const RejectRiderScreen({super.key});

  @override
  State<RejectRiderScreen> createState() => _RejectRiderScreenState();
}

class _RejectRiderScreenState extends State<RejectRiderScreen> {

  void ShowRejectRiderSheet (BuildContext context) {

    showModalBottomSheet(

      context: context,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      //showDragHandle: true,
      useSafeArea: true,
      builder: (context) => RejectRiderSheet(),

    );

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      ShowRejectRiderSheet(context);
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

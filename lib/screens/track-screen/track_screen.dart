import 'package:flutter/material.dart';
import 'package:project_borla/screens/track-screen/track_screen_sheet.dart';

import '../../role/garbageCollector/map/common_map.dart';

class UserTrackScreen extends StatefulWidget {
  const UserTrackScreen({super.key});

  @override
  State<UserTrackScreen> createState() => _UserTrackScreenState();
}

class _UserTrackScreenState extends State<UserTrackScreen> {

  void ShowUserTrackScreenSheet (BuildContext context) {

    showModalBottomSheet(

      context: context,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      //showDragHandle: true,
      useSafeArea: true,
      builder: (context) => TrackScreenSheet(),

    );

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      ShowUserTrackScreenSheet(context);
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

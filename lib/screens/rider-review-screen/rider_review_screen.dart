import 'package:flutter/material.dart';
import 'package:project_borla/bottom-sheets/rating_sheet.dart';

import '../../role/components/commonBackButton/common_back_button.dart';
import '../../role/garbageCollector/map/common_map.dart';

class RiderReviewScreen extends StatefulWidget {
  const RiderReviewScreen({super.key});

  @override
  State<RiderReviewScreen> createState() => _RiderReviewScreenState();
}

class _RiderReviewScreenState extends State<RiderReviewScreen> {


  void ShowRiderReviewSheet (BuildContext context) {

    showModalBottomSheet(

      context: context,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      //showDragHandle: true,
      useSafeArea: true,
      builder: (context) => RatingSheet(),

    );

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      ShowRiderReviewSheet(context);
    },);

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(child: CommonMap()),

            Positioned(
                left: 20,
                top: 60,
                child: CommonBackButton())
          ],
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_borla/screens/booking-accepted-screen/relatedWidgets/booking_accepted_sheet.dart';

import '../../role/garbageCollector/map/common_map.dart';

class BookingAcceptedScreen extends StatefulWidget {
  const BookingAcceptedScreen({super.key});


  @override
  State<BookingAcceptedScreen> createState() => _BookingAcceptedScreenState();
}


class _BookingAcceptedScreenState extends State<BookingAcceptedScreen> {

  void ShowBookingAcceptedSheet (BuildContext context) {

    showModalBottomSheet(

      context: context,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      //showDragHandle: true,
      useSafeArea: true,
      builder: (context) => BookingAcceptedSheet(),

    );

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      ShowBookingAcceptedSheet(context);
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

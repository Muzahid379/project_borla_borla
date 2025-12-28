
import 'package:flutter/material.dart';


import 'activity-widgets/job_activity_card_copy.dart';


class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          ActivityCard()
        ],
      ),
    );
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     CommonImage(
    //       height: 250,
    //       width: 250,
    //       imageSrc: "assets/images/scheduleImg.png",
    //       imageType: ImageType.png,
    //     ),
    //     CommonText(text: "No scheduled rides yet", fontSize: 18,)
    //   ],
    // );
  }
}
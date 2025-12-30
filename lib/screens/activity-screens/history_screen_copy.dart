

import 'package:flutter/material.dart';


import 'activity-widgets/job_activity_card_copy.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            UserActivityCard(isDetailScreen: true, role: "user",),
            UserActivityCard(isDetailScreen: true, role: "user"),
          ],
        ),
      ),
    );
  }
}

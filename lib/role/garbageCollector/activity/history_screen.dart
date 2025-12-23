
import 'package:flutter/material.dart';
import 'package:project_borla/role/garbageCollector/activity/innerWidget/job_activity_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ActivityCard(isDetailScreen: true,),
            ActivityCard(isDetailScreen: true,),
          ],
        ),
      ),
    );
  }
}

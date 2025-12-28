
import 'package:flutter/material.dart';

import 'innerWidget/job_activity_card.dart';

class OngoingScreen extends StatelessWidget {
  const OngoingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          ActivityCard(key: ValueKey(0))
        ],
      ),
    );
  }
}

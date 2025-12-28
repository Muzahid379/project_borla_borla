import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../components/commonBackButton/common_back_button.dart';
import '../../components/text/common_text.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FFFB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: CommonBackButton(),
        ),
        title: const CommonText(
          text: 'Notifications',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Mark all as read link
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // TODO: Mark all as read
                  },
                  child: const CommonText(
                    text: 'Mark all as read',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF4CAF50),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                children: [
                  const SectionHeader(title: 'TODAY'),
                  NotificationItem(
                    title:
                    'Your account has been verified. You can now go online and accept Borla pick ups.',
                    time: '11:00 AM',
                  ),
                  NotificationItem(
                    title:
                    'You have a new pickup request 1.2 km away. Review and accept to start.',
                    time: '11:00 AM',
                  ),
                  NotificationItem(
                    title:
                    'You\'ve successfully accepted the pickup. Navigate to the customer location.',
                    time: '11:00 AM',
                  ),
                  NotificationItem(
                    title:
                    'Job completed successfully. Earnings have been added to your wallet.',
                    time: '11:00 AM',
                  ),
                  SizedBox(height: 24.h),
                  const SectionHeader(title: 'Yesterday'),
                  NotificationItem(
                    title:
                    'Your account has been verified. You can now go online and accept jobs.',
                    time: '11:00 AM',
                  ),
                  NotificationItem(
                    title:
                    'You have a new pickup request 1.2 km away. Review and accept to start.',
                    time: '11:00 AM',
                  ),
                  NotificationItem(
                    title:
                    'You\'ve successfully accepted the pickup. Navigate to the customer location.',
                    time: '11:00 AM',
                  ),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Section header widget
class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h, bottom: 12.h),
      child: CommonText(
        text: title,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
    );
  }
}

/// Single notification item
class NotificationItem extends StatelessWidget {
  final String title;
  final String time;
  const NotificationItem({super.key, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Bell Icon
          Container(
            width: 44.w,
            height: 44.w,
            decoration: const BoxDecoration(
              color: Color(0xFFE8F5E8),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.notifications_outlined,
              color: Color(0xFF4CAF50),
              size: 24,
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: title,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                  lineHeight: 1.4,
                ),
                SizedBox(height: 6.h),
                CommonText(
                  text: time,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[600]!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

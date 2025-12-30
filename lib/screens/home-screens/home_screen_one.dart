import 'package:flutter/material.dart';
import 'package:project_borla/screens/activity-screens/user_activity_screen.dart';
import 'package:project_borla/screens/home-screens/home_map_screen.dart';
import 'package:project_borla/screens/info-screens/notification_screen_copy.dart';
import 'package:project_borla/screens/profile-screens/profile_screen_copy.dart';

import '../../features/fragments/bottom_nav_bar.dart';

class HomeScreenOne extends StatefulWidget {
  const HomeScreenOne({super.key});

  @override
  State<HomeScreenOne> createState() => _HomeScreenOneState();
}

class _HomeScreenOneState extends State<HomeScreenOne> {


  int tabIndex = 0;

  onItemTapped(int index) {

    setState(() {

      tabIndex = index;

    });

  }

  final WidgetOptions = [
    HomeMapScreen(),
    ActivityScreen(),
    NotificationsScreenCopy(),
    ProfileScreenCopy(),

  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: WidgetOptions.elementAt(tabIndex),
      bottomNavigationBar: bttmNavBar(tabIndex, onItemTapped, context),

    );
  }
}

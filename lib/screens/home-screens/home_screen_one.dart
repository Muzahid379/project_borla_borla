import 'package:flutter/material.dart';
import 'package:project_borla/screens/search-place-screens/location_search_screen_two.dart';

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

    // newTaskScreen(),
    // progressTaskScreen(),
    // completedTaskScreen(),
    // canceledTaskScreen()
    LocationSearchScreenTwo(),
    LocationSearchScreenTwo(),
    LocationSearchScreenTwo(),
    LocationSearchScreenTwo(),

  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: WidgetOptions.elementAt(tabIndex),
      bottomNavigationBar: bttmNavBar(tabIndex, onItemTapped, context),




    );
  }
}

import 'package:flutter/material.dart';


BottomNavigationBar bttmNavBar(bttmNavBarIndex, onItemTapped) {

  return BottomNavigationBar(

    items: [

      BottomNavigationBarItem(

        icon: Icon(Icons.list_alt),
        label: 'New',

      ),

      BottomNavigationBarItem(

          icon: Icon(Icons.access_time_filled_rounded),
          label: 'Progress'

      ),

      BottomNavigationBarItem(

          icon: Icon(Icons.fact_check),
          label: 'Completed'

      ),

      BottomNavigationBarItem(

          icon: Icon(Icons.free_cancellation),
          label: 'Canceled'

      ),

    ],
    selectedItemColor: Colors.green,
    unselectedItemColor: Colors.grey,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    currentIndex: bttmNavBarIndex,
    onTap: onItemTapped,
    type: BottomNavigationBarType.fixed,

  );

}
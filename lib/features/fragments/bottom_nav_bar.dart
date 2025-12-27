import 'package:flutter/material.dart';


Stack bttmNavBar(bttmNavBarIndex, onItemTapped, context) {

  return Stack(

    children: [
      BottomNavigationBar(

        items: [

          BottomNavigationBarItem(

            //icon: Icon(Icons.list_alt),
            icon: bttmNavBarIndex == 0 ?
                      Image.asset('assets/images/home2.png')
                      : Image.asset('assets/images/home.png'),
            label: 'Home',

          ),

          BottomNavigationBarItem(

             // icon: onItemTapped == 1 ? Image.asset('assets/images/wallet.png') : Image.asset('assets/images/home.png') ,
              icon: bttmNavBarIndex == 1 ? Image.asset('assets/images/wallet2.png') : Image.asset('assets/images/wallet.png')  ,
              label: 'Activity'

          ),

          BottomNavigationBarItem(

              icon: bttmNavBarIndex == 2 ? Image.asset('assets/images/notify2.png') : Image.asset('assets/images/notify.png'),
              label: 'Notification'

          ),

          BottomNavigationBarItem(

              icon: bttmNavBarIndex == 3 ? Image.asset('assets/images/user2.png') : Image.asset('assets/images/user.png'),
              label: 'Profile'

          ),



        ],
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: bttmNavBarIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,

      ),

      if(bttmNavBarIndex==0)
        Positioned(
        top: 0,
        left: MediaQuery.of(context).size.width / 4 * bttmNavBarIndex,
       // left: 19,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          height: 3,
          width: MediaQuery.of(context).size.width / 4,
          //width: 64,
          color: Colors.amber,
        ),
      )
      else if(bttmNavBarIndex==1)
        Positioned(
          top: 0,
          //left: MediaQuerysize.width / 4 * bttmNavBarIndex,
          left: 122,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            height: 3,
            //width: MediaQuery.of(context).size.width / 4,
            width: 64,
            color: Colors.amber,
          ),
        )
      else if(bttmNavBarIndex==2)
          Positioned(
            top: 0,
            //left: MediaQuerysize.width / 4 * bttmNavBarIndex,
            left: 224,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              height: 3,
              //width: MediaQuery.of(context).size.width / 4,
              width: 64,
              color: Colors.amber,
            ),
          )
        else
            Positioned(
              top: 0,
              //left: MediaQuerysize.width / 4 * bttmNavBarIndex,
              left: 328,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                height: 3,
                //width: MediaQuery.of(context).size.width / 4,
                width: 64,
                color: Colors.amber,
              ),
            )
    ],
  );

}
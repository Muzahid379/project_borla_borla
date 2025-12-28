import 'package:flutter/material.dart';
import 'package:project_borla/bottom-sheets/choose_ride_sheet.dart';
import 'package:project_borla/bottom-sheets/current_location_sheet.dart';
import 'package:project_borla/bottom-sheets/search_location_sheet.dart';

import '../../bottom-sheets/payment_sheet.dart';
import '../../bottom-sheets/rating_sheet.dart';
import '../../widgets/gradient_button.dart';

class ThankYouScreen extends StatefulWidget {
  const ThankYouScreen({super.key});

  @override
  State<ThankYouScreen> createState() => _ThankYouScreenState();
}

class _ThankYouScreenState extends State<ThankYouScreen> {


  void ShowSearchLocationSheet (BuildContext context) {

    showModalBottomSheet(

        context: context,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        //showDragHandle: true,
        useSafeArea: true,
        builder: (context) => SearchLocationSheet(),

    );


  }

  void ShowCurrentLocationSheet (BuildContext context) {

    showModalBottomSheet(

      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      //showDragHandle: true,
      useSafeArea: true,
      builder: (context) => CurrentLocationSheet(),

    );


  }

  void ShowRatingSheet (BuildContext context) {

    showModalBottomSheet(

      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      //showDragHandle: true,
      useSafeArea: true,
      builder: (context) => RatingSheet(),

    );


  }

  void ShowChooseRideSheet (BuildContext context) {

    showModalBottomSheet(

      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      //showDragHandle: true,
      useSafeArea: true,
      builder: (context) => ChooseRideSheet(),

    );


  }

  void ShowPaymentSheet (BuildContext context) {

    showModalBottomSheet(

      context: context,
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      //showDragHandle: true,
      useSafeArea: true,
      builder: (context) => PaymentSheet(),

    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        decoration: const BoxDecoration(
          gradient: const LinearGradient(

            begin: Alignment.topLeft,
            end: Alignment.bottomRight ,
            colors: [
              Color.fromRGBO(255, 246, 217, 1),
              Color.fromRGBO(255, 255, 255, 1),
            ],
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
              padding:  const EdgeInsets.fromLTRB(20, 240, 20, 20),
              
              child: Image.asset('assets/images/thanks.png'),

            ),



           Padding(
              padding:  EdgeInsets.fromLTRB(20,140,20,0),
              child: GradientButton(
                text: 'Back To Home',
                onPressed: () {
                  //Get.to(RegisterScreen());
                  //ShowSearchLocationSheet(context);
                  //ShowCurrentLocationSheet(context);
                  //ShowRatingSheet(context);
                  //ShowChooseRideSheet(context);
                  ShowPaymentSheet(context);
                },
              ),
            ),

            // Text("Content")
          ],
        ),
      ),



    );
  }
}


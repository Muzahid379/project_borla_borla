import 'package:flutter/material.dart';
import 'package:project_borla/bottom-sheets/payment_sheet.dart';

import '../widgets/gradient_button.dart';

class ConfirmAddressHomeSheet extends StatefulWidget {
  const ConfirmAddressHomeSheet({super.key});

  @override
  State<ConfirmAddressHomeSheet> createState() => _ConfirmAddressHomeSheetState();
}

class _ConfirmAddressHomeSheetState extends State<ConfirmAddressHomeSheet> {

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
    return Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),

        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 12),

            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(2),
              ),
            ),

            const SizedBox(height: 16),


            Text('Confirm Address...', style: TextStyle(

                fontSize: 22,

                fontWeight: FontWeight.w500

            ),),

            //const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.fromLTRB(22,0,22,0),
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            ),

            //const SizedBox(height: 16),


            Padding(
              padding: const EdgeInsets.fromLTRB(22,6,22,6),
              child: Row(

                children: [

                  Image.asset('assets/images/location_pin_two.png', scale: 0.8,),

                  SizedBox(width: 8,),

                  Text('Home', style: TextStyle(

                    fontSize: 18,
                    fontWeight: FontWeight.w500,


                  ),),
                  Spacer(),

                  //Image.asset('assets/images/add_button.png'),



                ],


              ),
            ),

            Text('1901 Thornridge Cir. Shiloh, Hawaii 81063 ', style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.grey
            ),),


            Padding(
              padding: const EdgeInsets.all(22.0),
              child: GradientButton(
                text: 'Confirm Location',
                onPressed: () {
                  //Get.to(OtpScreen());
                  Navigator.pop(context);
                  ShowPaymentSheet(context);

                },
              ),
            ),





          ],
        )


    );
  }
}

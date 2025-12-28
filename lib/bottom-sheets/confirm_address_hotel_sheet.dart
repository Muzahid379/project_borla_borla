import 'package:flutter/material.dart';

import '../widgets/gradient_button.dart';

class ConfirmAddressHotelSheet extends StatefulWidget {
  const ConfirmAddressHotelSheet({super.key});

  @override
  State<ConfirmAddressHotelSheet> createState() => _ConfirmAddressHotelSheetState();
}

class _ConfirmAddressHotelSheetState extends State<ConfirmAddressHotelSheet> {
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

                  Text('Hotel', style: TextStyle(

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
                },
              ),
            ),





          ],
        )


    );
  }
}

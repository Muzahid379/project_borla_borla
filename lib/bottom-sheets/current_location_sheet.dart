import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class CurrentLocationSheet extends StatefulWidget {
  const CurrentLocationSheet({super.key});

  @override
  State<CurrentLocationSheet> createState() => _CurrentLocationSheetState();
}

class _CurrentLocationSheetState extends State<CurrentLocationSheet> {
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


          Text('Current location...', style: TextStyle(

              fontSize: 22,

              fontWeight: FontWeight.w500

          ),),

          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.fromLTRB(22,0,22,0),
            child: Divider(
              color: Colors.grey.shade400,
              thickness: 1,
            ),
          ),

          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.fromLTRB(22,0,22,0),
            child: CustomTextField(
              hint: '2nd Crescent Link, Ghana',
              prefix: Image.asset('assets/images/fourth_pin.png'),
              suffix: Image.asset('assets/images/cross.png'),

            ),
          ),

          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Row(

              children: [

                Image.asset('assets/images/saved_icon.png', scale: 0.8,),

                SizedBox(width: 8,),

                Text('Saved Places', style: TextStyle(

                  fontSize: 18,
                  fontWeight: FontWeight.w500,


                ),),
                Spacer(),

                Image.asset('assets/images/add_button.png'),



              ],


            ),
          )



        ],
      )


    );
  }
}

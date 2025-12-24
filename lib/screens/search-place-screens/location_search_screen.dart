import 'package:flutter/material.dart';

import '../../widgets/custom_text_field.dart';

class LocationSearchScreen extends StatefulWidget {
  const LocationSearchScreen({super.key});

  @override
  State<LocationSearchScreen> createState() => _LocationSearchScreenState();
}

class _LocationSearchScreenState extends State<LocationSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //alignment: AlignmentDirectional.topCenter,
        fit: StackFit.passthrough,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.fitWidth,
              //alignment: Alignment.topRight,
            ),
          ),
          Padding(
            //padding: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.fromLTRB(22, 72, 22, 22),
            child: Column(
              children: [

                Padding(
                  //padding: const EdgeInsets.fromLTRB(26, 70, 20, 20),
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        width: 38,
                        height: 38,
                        decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                              color: Colors.black.withAlpha(40),
                            ),
                          ],
                        ),

                        child: IconButton(
                          padding: EdgeInsets.zero,
                          iconSize: 22,
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {},
                        ),
                      ),

                      SizedBox(width: 66),

                      Text('Search Address', style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                ),

                SizedBox(height: 36),

                CustomTextField(
                  hint: '2nd Crescent Link, Ghana',
                  prefix: Image.asset('assets/images/fourth_pin.png'),
                  suffix: Image.asset('assets/images/cross.png'),

                ),





              ],
            ),
          )

        ],
      )
    );
  }
}

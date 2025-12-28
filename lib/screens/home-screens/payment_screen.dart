import 'package:flutter/material.dart';

import '../../widgets/gradient_button.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  int selectedIndex =  -1 ;
  int index1 = 1 ;
  int index2 = 2 ;

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

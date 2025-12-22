import 'package:flutter/material.dart';

import '../../theme/auth_header.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/gradient_button.dart';
import '../../widgets/social_login_button.dart';
import 'login_screen.dart';

class SetPassScreen extends StatefulWidget {
  const SetPassScreen({super.key});

  @override
  State<SetPassScreen> createState() => _SetPassScreenState();
}

class _SetPassScreenState extends State<SetPassScreen> {

  bool agree = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(

            alignment: AlignmentDirectional.bottomStart,

            children: [

              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 214, 0, 1),
                      Color.fromRGBO(255,149,0, 1),
                    ],
                  ),
                ),
                child: AuthHeader(title: 'Set a New Password.', subtitle: 'Enter a strong and secure password to get back to your journey.'),
              ),

              Container(

                //alignment: Alignment.center,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(34)
                  ),
                  color: Colors.white,
                ),
                height: 630,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      const SizedBox(height: 20),

                      Text('New Password', style: TextStyle(
                          fontWeight: FontWeight.w700
                      ),),

                      const SizedBox(height: 16),

                      CustomTextField(
                        hint: 'Password',
                        obscureText: true,
                        suffix: const Icon(Icons.visibility_off),
                      ),



                      const SizedBox(height: 20),

                      Text('Confirm Password', style: TextStyle(
                          fontWeight: FontWeight.w700
                      ),),

                      const SizedBox(height: 16),

                      CustomTextField(
                        hint: 'Password',
                        obscureText: true,
                        suffix: const Icon(Icons.visibility_off),
                      ),


                      const SizedBox(height: 50),

                      GradientButton(
                        text: 'Save',
                        onPressed: () {},
                      ),

                      const SizedBox(height: 24),


                    ],
                  ),
                ),
              )

            ]
        )


    );
  }
}

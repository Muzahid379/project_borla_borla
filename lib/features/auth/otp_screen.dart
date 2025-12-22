import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../theme/auth_header.dart';
import '../../theme/otp_theme.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/gradient_button.dart';
import '../../widgets/social_login_button.dart';
import 'login_screen.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({super.key});

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {

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
                child: AuthHeader(title: 'Welcome Back!', subtitle: 'Sign in to continue your journey with Borla Borla'),
              ),

              Container(

                //alignment: Alignment.center,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(34)
                  ),
                  color: Colors.white,
                ),
                height: 666,

                child: Padding(
                  padding: const EdgeInsets.all(24),

                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      const SizedBox(height: 4),

                      PinCodeTextField(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          appContext: context,
                          length: 4,
                          pinTheme: appOTPStyle(),
                          animationType: AnimationType.fade,
                          animationDuration: Duration(milliseconds: 300),
                          enableActiveFill: true,
                          hintCharacter: '-',
                          hintStyle: const TextStyle(
                            fontSize: 36,
                            color: Colors.grey,
                          ),
                          onCompleted: (v) {

                          },
                          onChanged: (value) {



                          }

                      ),

                      GradientButton(
                        text: 'Log In',
                        onPressed: () {},
                      ),

                      const SizedBox(height: 24),

                      Row(
                        children: [
                          Expanded(child: Divider(color: Colors.grey.shade300)),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              'or continue with',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Expanded(child: Divider(color: Colors.grey.shade300)),
                        ],
                      ),

                      const SizedBox(height: 24),

                      SocialLoginButton(
                        text: 'Continue with Google',
                        asset: 'assets/images/google.png',
                        onPressed: () {},
                      ),

                      const SizedBox(height: 16),

                      SocialLoginButton(
                        text: 'Continue with Apple',
                        asset: 'assets/images/apple.png',
                        onPressed: () {},
                      ),

                      Row(

                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text("Don't have an account?", style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),),
                          //SizedBox(width: 2,),
                          TextButton(
                            onPressed: (){},
                            child: ShaderMask(
                              shaderCallback: (bounds) =>
                                  const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(255, 214, 0, 1),
                                      Color.fromRGBO(255, 149, 0, 1),
                                    ],
                                  ).createShader(bounds),
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),)
                        ],
                      )

                    ],
                  ),
                ),
              )

            ]
        )


    );
  }
}



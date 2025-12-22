import 'package:flutter/material.dart';
import '../../theme/auth_header.dart';
import '../../widgets/gradient_button.dart';
import '../../widgets/otp_input.dart';


class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String otp = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          // const AuthHeader(
          //   title: "Confirm It's Really You.",
          //   subtitle: "Enter the 4-digit code from your email.",
          // ),

          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(255, 214, 0, 1),
                  Color.fromRGBO(255,149,0, 1),
                ],
              ),
            ),
            child: AuthHeader(
                title: "Confirm It's Really You.",
                subtitle: 'Enter the 4-digit code from your email.'),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(34)
              ),
              color: Colors.white,
            ),
            height: 650,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
              child: Column(
                children: [
                  OtpInput(
                    length: 4,
                    onChanged: (value) {
                      setState(() => otp = value);
                    },

                  ),

                  const SizedBox(height: 32),

                  Column(
                    children: [
                      Text(
                        "Didn't receive OTP?",
                        style: TextStyle(
                            fontWeight: FontWeight.w600 ,
                            fontSize: 16,
                            color: Colors.grey.shade600
                        ),
                      ),
                      const SizedBox(height: 6),
                      GestureDetector(
                        onTap: () {},
                        // child: const Text(
                        //   'Resend Code',
                        //   style: TextStyle(
                        //     color: Colors.orange,
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.w600,
                        //   ),
                        // ),

                          // child: ShaderMask(
                          //   shaderCallback: (bounds) =>
                          //       const LinearGradient(
                          //         colors: [
                          //           Color.fromRGBO(255, 214, 0, 1),
                          //           Color.fromRGBO(255, 149, 0, 1),
                          //         ],
                          //       ).createShader(bounds),
                          //   child: const Text(
                          //     'Resend Code',
                          //     style: TextStyle(
                          //       decoration: TextDecoration.underline,
                          //       decorationColor: Colors.orange,
                          //       decorationThickness: 3,
                          //       color: Colors.white,
                          //       fontSize: 16,
                          //       fontWeight: FontWeight.w600,
                          //     ),
                          //   ),
                          // )

                        child: ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 214, 0, 1),
                              Color.fromRGBO(255, 149, 0, 1),
                            ],
                          ).createShader(bounds),
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 0.3),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.white, width: 3),
                              ),
                            ),
                            child: const Text(
                              'Resend Code',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,

                              ),
                            ),
                          ),
                        ),



                      ),
                    ],
                  ),

                 // const Spacer(),

                  SizedBox(height: 36,),

                  GradientButton(
                    text: 'Verify',
                    onPressed:  () {
                      debugPrint('OTP entered: $otp');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

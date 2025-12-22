import 'package:flutter/material.dart';

import '../../theme/auth_header.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/gradient_button.dart';
import '../../widgets/social_login_button.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

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
                child: AuthHeader(
                    title: 'Create Your New Account',
                    subtitle: 'Register now and explore the world your way.'),
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
                  child: SingleChildScrollView(
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        const SizedBox(height: 8),

                        Text('Name', style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),),

                        const SizedBox(height: 12),

                        CustomTextField(
                          hint: 'Enter your name',
                          //prefix: const Icon(Icons.phone),
                        ),

                        const SizedBox(height: 24),

                        Text('Phone Number', style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),),

                        const SizedBox(height: 12),

                        CustomTextField(
                          hint: 'Enter phone number',
                          prefix: const Icon(Icons.phone),
                        ),

                        const SizedBox(height: 24),

                        Text('Email', style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),),

                        const SizedBox(height: 12),

                        CustomTextField(
                          hint: 'Enter your email',
                          prefix: const Icon(Icons.email),
                        ),

                        const SizedBox(height: 24),

                        Text('Location', style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),),

                        const SizedBox(height: 12),

                        CustomTextField(
                          hint: 'Enter your location',
                          prefix: const Icon(Icons.location_on_outlined),
                        ),



                        const SizedBox(height: 24),

                        Text('Password', style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),),

                        const SizedBox(height: 12),

                        CustomTextField(
                          hint: 'Password',
                          obscureText: true,
                          suffix: const Icon(Icons.visibility_off),
                        ),

                        const SizedBox(height: 24),

                        Text(' Confirm Password', style: TextStyle(
                            fontWeight: FontWeight.w700
                        ),),

                        const SizedBox(height: 12),

                        CustomTextField(
                          hint: 'Password',
                          obscureText: true,
                          suffix: const Icon(Icons.visibility_off),
                        ),



                        const SizedBox(height: 32),

                        GradientButton(
                          text: 'Log In',
                          onPressed: () {},
                        ),

                        const SizedBox(height: 30),

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

                        const SizedBox(height: 30),

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

                        const SizedBox(height: 12),

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
                        ),

                        const SizedBox(height: 70),

                      ],
                    ),
                  ),
                ),
              )

            ]
        )



    );
  }
}

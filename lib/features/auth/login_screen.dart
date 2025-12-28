import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/features/auth/forget_pass_screen.dart';
import 'package:project_borla/screens/select_role_screen.dart';
import 'package:project_borla/theme/auth_header.dart';

import '../../widgets/custom_text_field.dart';
import '../../widgets/gradient_button.dart';
import '../../widgets/social_login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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

                  Text('Phone Number', style: TextStyle(
                    fontWeight: FontWeight.w700
                  ),),

                  const SizedBox(height: 8),

                  CustomTextField(
                    hint: 'Phone Number',
                    prefix: const Icon(Icons.phone),
                  ),



                  const SizedBox(height: 16),

                  Text('Password', style: TextStyle(
                      fontWeight: FontWeight.w700
                  ),),

                  const SizedBox(height: 8),

                  CustomTextField(
                    hint: 'Password',
                    obscureText: true,
                    suffix: const Icon(Icons.visibility_off),
                  ),



                  Row(
                    children: [


                      GradientCheckbox(
                        value: agree,
                        onChanged: (val) {
                          setState(() => agree = val);
                        },
                      ),


                      const SizedBox(width: 10),
                      const Text("Keep me logged in"),



                      Spacer(),



                      TextButton(
                        onPressed: () {
                          Get.to(ForgetPassScreen());
                        },
                        child: ShaderMask(
                          shaderCallback: (bounds) =>
                              const LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 214, 0, 1),
                                  Color.fromRGBO(255, 149, 0, 1),
                                ],
                              ).createShader(bounds),
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  GradientButton(
                    text: 'Log In',
                    onPressed: () {

                    },
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
                        onPressed: (){
                          Get.to(()=> SelectRoleScreen());
                        },
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


class GradientCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final double size;

  const GradientCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.size = 16,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: value
              ? const LinearGradient(
            colors: [
              Color.fromRGBO(255, 214, 0, 1),
              Color.fromRGBO(255, 149, 0, 1),
            ],
          )
              : null,
          border: Border.all(
            color: value ? Colors.transparent : Colors.grey,
            width: 2,
          ),
        ),
        child: value
            ? const Icon(
          Icons.check,
          size: 12,
          color: Colors.white,
        )
            : null,
      ),
    );
  }
}


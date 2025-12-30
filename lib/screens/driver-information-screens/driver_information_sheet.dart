import 'package:flutter/material.dart';

class DriverInformationSheet extends StatefulWidget {
  const DriverInformationSheet({super.key});

  @override
  State<DriverInformationSheet> createState() => _DriverInformationSheetState();
}

class _DriverInformationSheetState extends State<DriverInformationSheet> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,

      children: [

        Container(
            height: 560,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),

            child: Column(

              children: [

                const SizedBox(height: 14),

                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),

                const SizedBox(height: 26),


                Text('Rider Information', style: TextStyle(

                    fontSize: 22,

                    fontWeight: FontWeight.w500

                ),),




                Padding(
                  padding: const EdgeInsets.fromLTRB(22,8,22,0),
                  child: Divider(
                    color: Colors.grey.shade400,
                    thickness: 1,
                  ),
                ),

                const SizedBox(height: 22),


                Container(
                padding: const EdgeInsets.all(3), // border thickness
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.amber,
                    width: 3,
                  ),
                ),
                child: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/emptyProfile.png'),
                ),
              ),

                SizedBox(height: 8,),

              Text('McKenna Thomas', style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 21,
                  fontWeight: FontWeight.w600
              )),

                SizedBox(height: 22,),

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  //SizedBox(width: 60,),

                  Column(
                    children: [
                      RiderCircleActionMod(
                          Icon(Icons.star_border, color: Colors.amber, size: 40,)
                      ),
                      SizedBox(height: 14,),
                      Text('Rating', style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),),
                      SizedBox(height: 8,),
                      Text('4.8',  style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 24,
                          fontWeight: FontWeight.w800
                      ),),
                    ],
                  ),

                 // SizedBox(width: 30,),

                  Column(
                    children: [
                      RiderCircleActionMod(
                          Icon(Icons.motorcycle_outlined, color: Colors.amber, size: 40,)
                      ),
                      SizedBox(height: 14,),
                      Text('Rides', style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                      ),),
                      SizedBox(height: 8,),
                      Text('9,200',  style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 24,
                          fontWeight: FontWeight.w800
                      ),),
                    ],
                  ),

                  //SizedBox(width: 30,),

                  Column(
                    children: [
                      RiderCircleActionMod(
                          Icon(Icons.access_time_outlined, color: Colors.amber, size: 40,)
                      ),
                      SizedBox(height: 14,),
                      Text('Member', style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                      ),),
                      SizedBox(height: 8,),
                      Text('3 years',  style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 24,
                          fontWeight: FontWeight.w800
                      ),),
                    ],
                  ),






                ],


              ),

                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [

                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 214, 0, 1),
                            Color.fromRGBO(255,149,0, 1),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.all(2), // border thickness
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 50),
                          backgroundColor: Colors.white, // white button
                          shadowColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14), // inner radius
                          ),
                        ),
                        onPressed: () {
                          //.to(()=> OnboardingTwo());
                        },
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(50, 14, 50, 14),

                          child: ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              colors: [
                                Color.fromRGBO(255, 214, 0, 1),
                                Color.fromRGBO(255,149,0, 1),
                              ],
                            ).createShader(bounds),
                            child: Text(
                              'Call',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),


                    ElevatedButton(
                      onPressed: () {
                        // if (_currentPage == onboardingData.length - 1) {
                        //   // _completeOnboarding();
                        //
                        // } else {
                        //   _pageController.nextPage(
                        //     duration: const Duration(milliseconds: 500),
                        //     curve: Curves.easeInOut,
                        //   );
                        // }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero, // important
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        minimumSize: const Size(100, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 214, 0, 1),
                              Color.fromRGBO(255,149,0, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.fromLTRB(60, 16, 60, 16),
                          child: const Text(
                            'Chat',
                            style: TextStyle(
                              color: Colors.white,
                              //fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    )


                  ],

                ),

              /// Padding(
                //   padding: const EdgeInsets.fromLTRB(20,8,20,8,),
                //   child: userRowMod(),
                // ),
                //
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(22,0,22,0),
                //   child: Divider(
                //     color: Colors.grey.shade300,
                //     thickness: 1,
                //   ),
                // ),
                //
                // Padding(
                //   padding: const EdgeInsets.all(20.0),
                //   child: summarySection(),
                // ),
                //
                //
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(22,0,22,0),
                //   child: Divider(
                //     color: Colors.grey.shade300,
                //     thickness: 1,
                //   ),
                // ),
                //
                //
                // Padding(
                //   padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                //   child: userPaymentRow(),
                // ),
                //
                //
                // Padding(
                //   padding: const EdgeInsets.all(22.0),
                //   child: GradientButton(
                //     text: 'Pay Now',
                //     onPressed: () {
                //       //Get.to(()=> RiderSearchingScreen());
                //     },
                //   ),
                // ),


              ],
            )


        ),
        // Positioned(
        //     height: 90,
        //     width: 90,
        //     top: -50,
        //     right: 160,
        //     child: Image.asset('assets/images/user_large_pin.png')
        // ),
      ],
    );
  }

  Widget RiderCircleActionMod(Icon icon) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.amber),
      ),
      child: Center(child: icon),
    );
  }



}

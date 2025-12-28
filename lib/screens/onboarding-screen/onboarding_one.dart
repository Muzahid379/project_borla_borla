import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/screens/onboarding-screen/onboarding_two.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {

  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/images/onboard1.png",
      "title1": "Schedule and Track your",
      "title2": "Pickup With Ease!",
      "subtitle1": "Instantly book your garbage pick-up or schedule it",
      "subtitle2": "for later, and track your tricycle rider’s real-time",
      "subtitle3": "location until collection."
    },
    {
      "image": "assets/images/onboard2.png",
      "title1": "Pay Securely And Rate",
      "title2": "Your Rider Every Time",
      "subtitle1": "Make hassle-free payments via MOMO or cash,",
      "subtitle2": "and share feedback to help improve service",
      "subtitle3": "quality."
    },
    {
      "image": "assets/images/onboard3.png",
      "title1": "Choose Your Waste Type",
      "title2": "And Quantity Easily!",
      "subtitle1": "From household to commercial or recyclable",
      "subtitle2": "waste, select exactly what you want collected and",
      "subtitle3": "let Borla Borla handle the rest."
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFF8E8),  // Much closer to the screenshot
              Colors.white,
              // Color.fromRGBO(255, 246, 217, 1),
              // Color.fromRGBO(255, 255, 255, 1),
            ],
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    itemCount: onboardingData.length,
                    itemBuilder: (context, index) => VideoOnboardingPage(
                      imagePath: onboardingData[index]["image"]!,
                      titlePath1: onboardingData[index]["title1"]!,
                      titlePath2: onboardingData[index]["title2"]!,
                      subtitlePath1: onboardingData[index]["subtitle1"]!,
                      subtitlePath2: onboardingData[index]["subtitle2"]!,
                      subtitlePath3: onboardingData[index]["subtitle3"]!,
                    ),
                  ),
                ),
                //const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onboardingData.length,
                        (index) => buildDot(index),
                  ),
                ),


                const SizedBox(height: 46),

                _currentPage == 2 ? Row(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [

                        ElevatedButton(
                          onPressed: () {

                            Get.to(()=> OnboardingTwo());

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
                              padding: const EdgeInsets.fromLTRB(150, 16, 150, 16),
                              child: const Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.white,
                                  //fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        )


                      ],

                    ) : Row(

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
                          Get.to(()=> OnboardingTwo());
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
                              'Skip',
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
                        if (_currentPage == onboardingData.length - 1) {
                         // _completeOnboarding();

                        } else {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
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
                            'Continue',
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

                const SizedBox(height: 80),
              ],
            ),
            // Positioned(
            //   top: 50,
            //   right: 20,
            //   child: _currentPage != onboardingData.length - 1
            //       ? TextButton(
            //     onPressed: () {
            //       _pageController.animateToPage(
            //         onboardingData.length - 1,
            //         duration: const Duration(milliseconds: 500),
            //         curve: Curves.easeInOut,
            //       );
            //     },
            //     child: const Text(
            //       "Skip",
            //       style: TextStyle(fontSize: 16, color: Colors.white),
            //     ),
            //   )
            //       : const SizedBox(),
            // ),
          ],
        ),
      ),
    );

  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 1),
      height: 8,
      width: _currentPage == index? 56 : 10,
      decoration: BoxDecoration(
        gradient: _currentPage == index ? LinearGradient(
            colors: [
              Color.fromRGBO(255, 214, 0, 1),
              Color.fromRGBO(255,149,0, 1),
            ]
        ) : LinearGradient(
            colors: [
              Color.fromRGBO(189, 189, 189, 1),
              Color.fromRGBO(189, 189, 189, 1),
            ]
        ) ,
        borderRadius: BorderRadius.circular(20),
        //shape: BoxShape.circle,
      ),
    );
  }

}

class VideoOnboardingPage extends StatefulWidget {
  final String imagePath;
  final String titlePath1;
  final String titlePath2;
  final String subtitlePath1;
  final String subtitlePath2;
  final String subtitlePath3;

  const VideoOnboardingPage({
    Key? key,
    required this.imagePath,
    required this.titlePath1,
    required this.titlePath2,
    required this.subtitlePath1,
    required this.subtitlePath2,
    required this.subtitlePath3,
  }) : super(key: key);

  @override
  State<VideoOnboardingPage> createState() => _VideoOnboardingPageState();
}

class _VideoOnboardingPageState extends State<VideoOnboardingPage> {

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
      
        children: [
      
      
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: Get.width,
                height: 489.h,
                child: Image.asset(widget.imagePath, fit: BoxFit.cover,)
            ),
          ),
      
          Padding(
            padding: const EdgeInsets.fromLTRB(20,10,20,10),
            child: Column(
              children: [
                Text(
                  widget.titlePath1,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  widget.titlePath2,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
      
                //const SizedBox(height: 20),
                Text(
                  widget.subtitlePath1,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  widget.subtitlePath2,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  widget.subtitlePath3,
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




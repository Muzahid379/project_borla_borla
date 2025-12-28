
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_borla/role/components/commonBackButton/common_back_button.dart';
import 'package:project_borla/role/components/image/common_image.dart';
import 'package:project_borla/role/components/text/common_text.dart';
import 'package:project_borla/role/garbageCollector/activity/innerWidget/job_activity_card.dart';
import 'package:project_borla/theme/app_color.dart';

import '../../components/custom_container.dart';
import '../../components/gradient_scafold.dart';

class ScheduleDetailScreen extends StatelessWidget {
  const ScheduleDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: CommonBackButton(),
        ),
        title: CommonText(text: "Ride Details", color: AppColors.textDark, fontSize: 18,),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
          child: Column(
            children: [
              CustomContainer(
                width: Get.width,
                height: 100,
                borderRadius: 8,
                borderColor: AppColors.green100 ,
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonText(text: "Ride scheduled!", color: AppColors.green500, fontSize: 20,),
                          CommonText(text: "Monday, Dec 23 - 16:00 PM", color: AppColors.gray300,),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                        top: 0,
                        child: CommonImage(imageSrc: "assets/images/patternLeft.png", imageType: ImageType.png, size: 70,)),
                    Positioned(
                      right: 0,
                        top: 0,
                        child: CommonImage(imageSrc: "assets/images/patternRight.png", imageType: ImageType.png, size: 80,)),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              ActivityCard(isDetailScreen: true,)
            ],
          ),
        ),
      ),
    );
  }
}

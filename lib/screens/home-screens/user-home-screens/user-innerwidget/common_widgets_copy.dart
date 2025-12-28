
// ---------------- ACTION BUTTONS ----------------
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../features/fragments/dotted_line_copy.dart';

import '../../../../theme/app_color.dart';
import '../../../../theme/common_button_copy.dart';
import '../../../../theme/common_text_two.dart';
import '../../../../theme/custom_container_copy.dart';
import '../../../../utils/custom-gen-assets/assets.gen.dart';
import '../../../chat-screen/chat_screen_copy.dart';

import '../user-controller/user_home_controller.dart';
import 'driver_info_screen_copy.dart';

Widget actionButtons(BuildContext context,) {
  return Row(
    children: [
      Expanded(
        child: CommonButton(
          // onTap: controller.declineJob, // ✅ controller handles logic
          buttonRadius: 12,
          titleText: "Decline",
          titleColor: AppColors.green500,
          borderColor: AppColors.green500,
        ),
      ),
      SizedBox(width: 20,),
      Expanded(
        child: CommonButton(
          onTap: (){
            DriverHomeController.instance.isBottomSheet.value = true;
            Get.to(()=> CustomerInfoScreen());
          },
          // onTap: controller.acceptJob,
          buttonRadius: 12,
          titleText: "Accept",
        ),
      ),
    ],
  );
}

// ---------------- USER ROW ----------------
Widget userRow(DriverHomeController controller) {
  return Row(
    children: [
      const CircleAvatar(
        radius: 28,
        backgroundImage: NetworkImage('https://shorturl.at/WSMrn'),
      ),
      const SizedBox(width: 16),
      const Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: 'Jenny Wilson',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 4),
            CommonText(
              text: 'User',
              fontSize: 14,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      controller.isBottomSheet.value?
      Row(
        children: [
          InkWell(
              onTap: () {
                Get.to(()=> ChattingScreen());
              },
              child: circleAction(Assets.icons.messageIcon.image(height: 20, width: 20))),
          const SizedBox(width: 12),
          circleAction(Assets.icons.callIcon.image(height: 20, width: 20)),
        ],
      )
          : countdownRing(controller),
    ],
  );
}

Widget circleAction(Image icon) {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: AppColors.primaryColor),
    ),
    child: Center(child: icon),
  );
}

// ---------------- SAFE ANIMATION (NO Obx) ----------------
Widget countdownRing(DriverHomeController controller) {
  return SizedBox(
    width: 80,
    height: 80,
    child: AnimatedBuilder(
      animation: controller.animation,
      builder: (context, _) {
        return Stack(
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(
              value: controller.animation.value,
              strokeWidth: 6,
              backgroundColor: AppColors.gray200,
              valueColor: const AlwaysStoppedAnimation(Color(0xFF4CAF50)),
            ),
            CommonText(
              text: '${controller.remainingSeconds}s',
              fontSize: 14,
              color: AppColors.green500,
            )
          ],
        );
      },
    ),
  );
}

// ---------------- LOCATION ----------------
Widget locationSection() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        children: [
          Icon(Icons.radio_button_checked,
              color: AppColors.primaryColor, size: 18),
          SizedBox(height: 6),
          VerticalDottedLine(),
          SizedBox(height: 6),
          Icon(Icons.location_on,
              color: AppColors.primaryColor, size: 20),
        ],
      ),
      const SizedBox(width: 12),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              textAlign: TextAlign.start,
              text: '85 Ave, Street Side Road, Accra, Ghana',
              fontSize: 14,
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(child: HorizontalDottedLine()),
                distanceChip(),
              ],
            ),
            SizedBox(height: 8),
            CommonText(
              textAlign: TextAlign.start,
              text: '1901 Thornridge Road, Accra, Ghana',
              fontSize: 14,
            ),
          ],
        ),
      ),
    ],
  );
}

Widget distanceChip() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withAlpha(20),
          blurRadius: 8,
          spreadRadius: 2,
        ),
      ],
    ),
    child: const CommonText(
      text: '22.6 KM',
      fontWeight: FontWeight.w600,
      color: AppColors.green500,
    ),
  );
}
// ---------------- PAYMENT ----------------
Widget paymentRow() {
  return Row(
    children: [
      CustomContainer(
          padding: EdgeInsets.all(10),
          borderRadius: 100,
          color: AppColors.gray100,
          child: Center(child: Assets.icons.creditCardIcon.image(height: 20, width: 20))),
      SizedBox(width: 12),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            text: "Payment",
            fontSize: 12,
            color: AppColors.gray300,
          ),
          CommonText(
            text: 'MTN MoMo Pay',
            fontSize: 16,
          ),
        ],
      ),
      Spacer(),
      CommonText(
        text: 'GH₵ 50',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor,
      ),
    ],
  );
}

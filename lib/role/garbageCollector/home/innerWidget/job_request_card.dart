import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_borla/role/garbageCollector/home/controller/driver_home_controller.dart';
import 'package:project_borla/theme/app_color.dart';
import '../../../components/text/common_text.dart';
import 'common_widgets.dart';

class JobRequestCard extends StatelessWidget {
  JobRequestCard({super.key});

  final DriverHomeController controller =
  Get.find<DriverHomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.green100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(13),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: CommonText(text: "Ride Request", fontSize: 18,)),
          const Divider(color: AppColors.black50, thickness: 1),
          userRow(controller),
          const Divider(color: AppColors.black50, thickness: 1),
          const SizedBox(height: 4),
          locationSection(),
          const Divider(color: AppColors.black50, thickness: 1),
          const SizedBox(height: 10),
          paymentRow(),
          const SizedBox(height: 20),
          actionButtons(context),
        ],
      ),
    );
  }
}



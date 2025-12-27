
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_borla/gen/custom_assets/assets.gen.dart';
import 'package:project_borla/role/components/custom_container.dart';
import 'package:project_borla/role/garbageCollector/home/innerWidget/job_request_card.dart';

import '../../../theme/app_color.dart';
import '../../components/text/common_text.dart';
import '../map/common_map.dart';
import 'controller/driver_home_controller.dart';
import 'innerWidget/application_review_dialog.dart';
import 'innerWidget/pulsing_cycle.dart';

class DriverHomeScreen extends StatefulWidget {
  DriverHomeScreen({super.key});

  @override
  State<DriverHomeScreen> createState() => _DriverHomeScreenState();
}

class _DriverHomeScreenState extends State<DriverHomeScreen> {
  final DriverHomeController controller =
  Get.put(DriverHomeController());

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) => const ApplicationReviewDialog(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Google Map
          Positioned.fill(child: CommonMap()),

          /// Pulsing Marker Overlay
          Obx(() {
            final screenPos = controller.screenPosition.value;
            if (screenPos == null) return const SizedBox();

            return Positioned(
              left: screenPos.x.toDouble() - 40,
              top: screenPos.y.toDouble() - 40,
              child: const PulsingCircleWithIcon(),
            );
          }),

          /// Top Status Card
          Positioned(
            top: 70,
            left: 20,
            right: 20,
            child: Obx(
                  () => CustomContainer(
                    borderRadius: 38,
                    color: AppColors.white,
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        CustomContainer(
                          height: 50,
                          width: 50,
                          borderRadius: 100,
                            color: controller.isOnline.value? AppColors.blue: AppColors.gray200,
                            child: Center(child: controller.isOnline.value? Assets.icons.daySunIcon.image(height: 30, width: 50) : Assets.icons.nightMoonIcon.image(height: 30, width: 50)),
                        ),

                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              text: controller.isOnline.value
                                  ? 'Online'
                                  : 'Offline',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textDark,
                            ),
                            CommonText(
                              text: 'Go online to start accepting jobs',
                              fontSize: 12,
                              color: AppColors.gray300,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Spacer(),
                        Switch(
                          value: controller.isOnline.value,
                          activeTrackColor: AppColors.green500,
                          activeThumbColor: AppColors.white,
                          inactiveThumbColor: AppColors.white,
                          inactiveTrackColor: AppColors.gray200,
                          onChanged: controller.toggleOnline,
                        ),
                      ],
                    ),
                  ),
            ),
          ),

          Positioned(
            top: 250,
            left: 30,
            right: 30,
            child: Obx(() {
              return controller.isOnline.value
                  ? JobRequestCard()
                  : const SizedBox.shrink();
            }),
          ),
        ],
      ),
    );
  }
}



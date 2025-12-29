

import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_borla/theme/app_color.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DriverHomeController extends GetxController
    with GetTickerProviderStateMixin {
  static DriverHomeController get instance =>
      Get.put(DriverHomeController());

  final RxBool isOnline = false.obs;
  final RxBool isScheduleRequest = true.obs;

  ////////////////////////////////////
  final isExpanded = false.obs;

  void toggle() {
    isExpanded.toggle();
  }

  ////////////////////////////////////
  late AnimationController _animationController;
  late Animation<double> animation;

  RxInt durationInSeconds = 30.obs;
  RxInt remainingSeconds = 30.obs;

  var jobRequests = <JobRequestModel>[].obs;
  RxBool isBottomSheet = false.obs;

  @override
  void onInit() {
    super.onInit();
    jobRequests.addAll(
      List.generate(3, (index) => JobRequestModel(id: index)),
    );
  }

  void toggleOnline(bool value) {
    isOnline.value = value;
    if (value) {
      _setupTimer();
    } else {
      _animationController.stop();
    }
  }

  void acceptJob(JobRequestModel job) {
    jobRequests.remove(job);
  }

  void declineJob(JobRequestModel job) {
    jobRequests.remove(job);
  }

  ////////////////////////////////////////////////

  void _setupTimer() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: durationInSeconds.value),
    );

    animation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    )..addListener(() {
      remainingSeconds.value =
          (animation.value * durationInSeconds.value).ceil();
    });

    _animationController.forward();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Get.snackbar(
          'Time Up!',
          'Countdown finished',
          backgroundColor: AppColors.green500,
          colorText: AppColors.white,
        );
      }
    });
  }

  void restart({int? newDuration}) {
    _animationController.stop();
    _animationController.reset();

    if (newDuration != null) {
      durationInSeconds.value = newDuration;
      remainingSeconds.value = newDuration;
    }

    _animationController.duration =
        Duration(seconds: durationInSeconds.value);
    _animationController.forward();
  }

  @override
  void onClose() {
    _animationController.dispose();
    super.onClose();
  }
}


class JobRequestModel {
  final int id;
  JobRequestModel({required this.id});
}

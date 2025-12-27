
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_borla/theme/app_color.dart';

class DriverHomeController extends GetxController with GetTickerProviderStateMixin{

  static DriverHomeController get instance => Get.put(DriverHomeController());

  late GoogleMapController mapController;

  final RxBool isOnline = false.obs;
  final RxBool isScheduleRequest = true.obs;

  final Rx<LatLng> driverPosition =
      const LatLng(5.6037, -0.1870).obs; // Accra

  final Rx<ScreenCoordinate?> screenPosition =
  Rx<ScreenCoordinate?>(null);

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
    updateMarkerPosition();
  }

  void onCameraMove() {
    updateMarkerPosition();
  }

  Future<void> updateMarkerPosition() async {
    final pos = await mapController.getScreenCoordinate(driverPosition.value);
    screenPosition.value = pos;
  }

  void toggleOnline(bool value) {
    isOnline.value = value;
    if(value){
      _setupTimer();
    }
  }

  ////////////////////////////////////
  final isExpanded = false.obs;

  void toggle() {
    isExpanded.toggle();
  }

  ////////////////////////////////////
  late AnimationController _animationController;
  late Animation<double> animation;

  RxInt durationInSeconds = 30.obs; // Dynamic duration (can be changed)
  RxInt remainingSeconds = 30.obs;
  // RxBool isJobRequested = false.obs;

  var jobRequests = <JobRequestModel>[].obs;
  RxBool isBottomSheet = false.obs;

  @override
  void onInit() {
    super.onInit();
    jobRequests.addAll(List.generate(3, (index) => JobRequestModel(id: index)));
  }

  void acceptJob(JobRequestModel job) {
    jobRequests.remove(job);
    // Call backend accept API here
  }

  void declineJob(JobRequestModel job) {
    jobRequests.remove(job);
    // Call backend decline API here
  }

  ////////////////////////////////////////////////

  void _setupTimer() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: durationInSeconds.value),
    );

    animation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    )..addListener(() {
      final progress = animation.value;
      remainingSeconds.value = (progress * durationInSeconds.value).ceil();
    });

    _animationController.forward();

    // Optional: Listen for completion
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Get.snackbar('Time Up!', 'Countdown finished',
            backgroundColor: AppColors.green500, colorText: AppColors.white);
      }
    });
  }

  // Restart with new duration
  void restart({int? newDuration}) {
    _animationController.stop();
    _animationController.reset();

    if (newDuration != null) {
      durationInSeconds.value = newDuration;
      remainingSeconds.value = newDuration;
    }

    _animationController.duration = Duration(seconds: durationInSeconds.value);
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


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateTimePickerController extends GetxController {
  final selectedTab = 0.obs;

  final hourIndex = 0.obs;
  final minuteIndex = 0.obs;
  final periodIndex = 0.obs;

  late FixedExtentScrollController hourController;
  late FixedExtentScrollController minuteController;
  late FixedExtentScrollController periodController;

  RxBool isSetScheduled = false.obs;

  @override
  void onInit() {
    super.onInit();
    _setCurrentTime();
    _initScrollControllers();
  }

  void _setCurrentTime() {
    final now = TimeOfDay.now();
    int hour = now.hour;
    int minute = now.minute;

    if (hour >= 12) {
      periodIndex.value = 1;
      hour = hour == 12 ? 12 : hour - 12;
    } else {
      periodIndex.value = 0;
      hour = hour == 0 ? 12 : hour;
    }

    hourIndex.value = hour - 1; // 0–11
    minuteIndex.value = minute;
  }

  void _initScrollControllers() {
    hourController =
        FixedExtentScrollController(initialItem: hourIndex.value);
    minuteController =
        FixedExtentScrollController(initialItem: minuteIndex.value);
    periodController =
        FixedExtentScrollController(initialItem: periodIndex.value);
  }

  TimeOfDay get selectedTime {
    int hour = hourIndex.value + 1;

    if (periodIndex.value == 1 && hour != 12) hour += 12;
    if (periodIndex.value == 0 && hour == 12) hour = 0;

    return TimeOfDay(hour: hour, minute: minuteIndex.value);
  }

  @override
  void onClose() {
    hourController.dispose();
    minuteController.dispose();
    periodController.dispose();
    super.onClose();
  }
}
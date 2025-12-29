import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

void loadingDialog() {

  Get.dialog(
    AlertDialog(
      title: const Text('Delete item'),
      content: const Text('Are you sure you want to delete this item?'),
      actions: [
        TextButton(
          onPressed: () => Get.back(), // close dialog
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            // your action
            Get.back();
          },
          child: const Text('Delete'),
        ),
      ],
    ),
  );



}
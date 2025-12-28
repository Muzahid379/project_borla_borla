import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:phone_form_field/phone_form_field.dart';

import '../../../../gen/custom_assets/assets.gen.dart';
import '../../../../theme/app_color.dart';
import '../../../components/commonTextField/common_text_field.dart';
import '../../../components/text/common_text.dart';

Widget profileItems(BuildContext context, controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: CommonText(
          text: 'Name',
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: 8.h),
      CommonTextField(
        hintText: 'Enter Name',
        // controller: controller.nameController,
      ),
      SizedBox(height: 20.h),

      /// ----------------- Phone Field -----------------
      Align(
        alignment: Alignment.centerLeft,
        child: const CommonText(
          text: 'Phone Number',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      SizedBox(height: 8.h),
      PhoneFormField(

        initialValue: PhoneNumber.parse('+233'),
        // initialCountryCode: 'GH',
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          hintText: 'Enter phone number',
          hintStyle: TextStyle(color: Colors.grey[500]),
          contentPadding: EdgeInsets.symmetric(
              vertical: 16.h, horizontal: 16.w),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(color: Color(0xFF4CAF50),
                width: 2),
          ),
        ),
        countryButtonStyle: const CountryButtonStyle(
          showFlag: true,
          showDialCode: true,
          showIsoCode: false,
          flagSize: 20,
        ),
      ),

      SizedBox(height: 20.h),

      /// ---------------- DATE OF BIRTH ----------------
      Align(
        alignment: Alignment.centerLeft,
        child: const CommonText(
          text: 'Date of Birth',
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: 8.h),
      GestureDetector(
        onTap: () => controller.pickDate(context),
        child: AbsorbPointer(
          child: CommonTextField(
            controller: controller.dobController,
            hintText: 'DD / MM / YYYY',
            suffixIcon:
            SizedBox(height: 20, width: 20,
              child: Center(
                child: Assets.icons.dobCalenderIcon.image(
                    height: 20, width: 20),
              ),
            ),
          ),
        ),
      ),

      SizedBox(height: 20.h),

      /// ---------------- LOCATION ----------------
      Align(
        alignment: Alignment.centerLeft,
        child: CommonText(
          text: 'Location',
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: 8.h),
      CommonTextField(
        hintText: 'Enter Location',
        controller: controller.locationController,
      ),

      SizedBox(height: 20.h),

      /// ---------------- GHANA CARD ----------------
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CommonText(
            text: 'Ghana Card ID',
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 8.h),
          DottedBorder(
            options: RoundedRectDottedBorderOptions(
              radius: const Radius.circular(12),
              dashPattern: const [10, 5],
              strokeWidth: 2,
              padding: const EdgeInsets.all(8),
              color: AppColors.gray200,
            ),
            child: Obx(() {
              return SizedBox(
                height: 130.h,
                width: double.infinity,
                child: GestureDetector(
                  onTap: () =>
                      controller.pickImage(isProfile: false),
                  child: controller.ghanaCardImage.value !=
                      null
                      ? ClipRRect(
                    borderRadius:
                    BorderRadius.circular(12),
                    child: Image.file(
                      controller.ghanaCardImage.value!,
                      fit: BoxFit.cover,
                    ),
                  )
                      : Column(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cloud_upload_outlined,
                        size: 32,
                        color: AppColors.gray300,
                      ),
                      SizedBox(height: 8.h),
                      CommonText(
                        text: 'Upload',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.gray300,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    ],
  );
}
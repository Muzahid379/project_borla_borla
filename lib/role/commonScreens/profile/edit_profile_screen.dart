import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phone_form_field/phone_form_field.dart';
import '../../../utils/app_colors.dart';
import '../../components/commonBackButton/common_back_button.dart';
import '../../components/commonTextField/common_text_field.dart';
import '../../components/gradient_scafold.dart';
import '../../components/text/common_text.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: CommonBackButton(),
        ),
        title: const CommonText(
          text: 'Edit Profile',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            children: [
              // Profile Picture Section
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 120.w,
                    height: 120.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xFF4CAF50), width: 4),
                      color: Colors.grey[200],
                    ),
                    child: const CircleAvatar(
                      radius: 54,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                      child: Icon(Icons.person, size: 60, color: Colors.grey),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: const BoxDecoration(
                        color: Color(0xFF4CAF50),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add, color: Colors.white, size: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              const CommonText(
                text: 'Change Your Profile Picture',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF4CAF50),
              ),
              SizedBox(height: 32.h),

              // Form Fields
              CommonTextField(
                labelText: 'Name',
                controller: TextEditingController(text: 'Cleopas Owusu'),
              ),
              SizedBox(height: 20.h),

              // Phone Field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CommonText(
                    text: 'Phone Number',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                  SizedBox(height: 8.h),
                  PhoneFormField(

                    initialValue: PhoneNumber.parse('+233'),
                    // initialCountryCode: 'GH',
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter phone number',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
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
                        borderSide: const BorderSide(color: Color(0xFF4CAF50), width: 2),
                      ),
                    ),
                    countryButtonStyle: const CountryButtonStyle(
                      showFlag: true,
                      showDialCode: true,
                      showIsoCode: false,
                      flagSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),

              CommonTextField(
                labelText: 'Email',
                controller: TextEditingController(text: 'cleopasowusu@gmail.com'),
              ),
              SizedBox(height: 20.h),

              CommonTextField(
                labelText: 'Location',
                controller: TextEditingController(text: 'Accra, Ghana'),
              ),
              SizedBox(height: 40.h),

              // Save Button
              SizedBox(
                width: double.infinity,
                height: 56.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    elevation: 0,
                  ),
                  child: const CommonText(
                    text: 'Save',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

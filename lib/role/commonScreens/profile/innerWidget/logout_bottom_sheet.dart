import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../theme/app_color.dart';
import '../../../components/text/common_text.dart';

void showLogoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
    ),
    backgroundColor: Colors.white,
    builder: (_) {
      return SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.w, 32.h, 24.w, 24.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title
              const CommonText(
                text: 'Logout',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.red,
              ),
              SizedBox(height: 16.h),

              // Description
              CommonText(
                text:
                'Are you sure you want to logout your account? This action cannot be undone.\n\nPlease confirm your decision.',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade700,
                textAlign: TextAlign.center,
                lineHeight: 1.5,
              ),
              SizedBox(height: 40.h),

              // Buttons
              Row(
                children: [
                  // Cancel Button
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        side: const BorderSide(color: AppColors.primaryColor, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      child: const CommonText(
                        text: 'Cancel',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w),

                  // Logout Button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: CommonText(text: 'Logged out successfully', color: AppColors.white,)),
                        );
                        // TODO: Perform actual logout logic
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        elevation: 0,
                      ),
                      child: const CommonText(
                        text: 'Yes, Logout',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

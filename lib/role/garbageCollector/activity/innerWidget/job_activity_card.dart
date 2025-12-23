
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_borla/role/garbageCollector/activity/controller/activity_controller.dart';
import 'package:project_borla/role/garbageCollector/activity/schedule_detail_screen.dart';
import 'package:project_borla/theme/app_color.dart';

import '../../../commonScreens/chat/chatting_screen.dart';
import '../../../components/text/common_text.dart';

class ActivityCard extends StatelessWidget {
  bool isDetailScreen;
  ActivityCard({super.key, this.isDetailScreen = false});

  ActivityController activityController = Get.put(ActivityController());

  // COLORS
  static const Color primaryGreen = Color(0xFF00A654);
  static const Color dividerGrey = Color(0xFFE6E6E6);
  static const Color cardWhite = Colors.white;
  static const Color payBg = Color(0xFFF5F5F5);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: cardWhite,
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
          _userRow(),
          const SizedBox(height: 10),
          const Divider(color: dividerGrey, thickness: 1),
          const SizedBox(height: 10),
          _locationSection(),
          const SizedBox(height: 10),
          const Divider(color: dividerGrey, thickness: 1),
          const SizedBox(height: 10),
          _paymentRow(),
          isDetailScreen? SizedBox.shrink() : const SizedBox(height: 20),
          isDetailScreen? SizedBox.shrink() : _viewDetailsButton(),
        ],
      ),
    );
  }

  // ---------------- USER ROW ----------------
  Widget _userRow() {
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
        activityController.selectedIndex.value == 0?
        Row(
          children: [
            InkWell(
              onTap: () {
                Get.to(()=> ChattingScreen());
              },
                child: _circleAction(Icons.chat_bubble_outline)),
            const SizedBox(width: 12),
            _circleAction(Icons.call_outlined),
          ],
        ) : activityController.selectedIndex.value == 1?
            Column(
              children: [
                CommonText(text: "Dec 23" , color: AppColors.green500,),
                CommonText(text: "10:00 PM", color: AppColors.gray300, fontSize: 14,),
              ],
            ) :
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: BoxDecoration(
                color: AppColors.green500,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppColors.green100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(13),
                    blurRadius: 8,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: CommonText(text: "Completed", color: AppColors.white, fontSize: 12, fontWeight: FontWeight.w600,),
            )
      ],
    );
  }

  Widget _circleAction(IconData icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: primaryGreen),
      ),
      child: Icon(icon, color: primaryGreen, size: 20),
    );
  }

  // ---------------- LOCATION ----------------
  Widget _locationSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: const [
            Icon(Icons.radio_button_checked,
                color: primaryGreen, size: 18),
            SizedBox(height: 6),
            _VerticalDottedLine(),
            SizedBox(height: 6),
            Icon(Icons.location_on, color: primaryGreen, size: 20),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CommonText(
                text: '85 Ave, Street Side Road, Accra, Ghana',
                fontSize: 15,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Expanded(child: _HorizontalDottedLine()),
                  _distanceChip(),
                ],
              ),
              const SizedBox(height: 12),
              const CommonText(
                text: '1901 Thornridge Road, Accra, Ghana',
                fontSize: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _distanceChip() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
      decoration: BoxDecoration(
        color: cardWhite,
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
        color: primaryGreen,
      ),
    );
  }

  // ---------------- PAYMENT ----------------
  Widget _paymentRow() {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: payBg,
          ),
          child: const Icon(
            Icons.payment_outlined,
            color: primaryGreen,
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonText(
              text: "Payment",
              fontSize: 12,
              color: AppColors.gray300,
            ),
            const CommonText(
              text: 'MTN MoMo Pay',
              fontSize: 16,
            ),
          ],
        ),
        const Spacer(),
        const CommonText(
          text: 'GH₵ 50',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: primaryGreen,
        ),
      ],
    );
  }

  // ---------------- BUTTON ----------------
  Widget _viewDetailsButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if(activityController.selectedIndex.value == 1){
            Get.to(() => ScheduleDetailScreen());
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryGreen,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const CommonText(
          text: 'View Details',
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _VerticalDottedLine extends StatelessWidget {
  const _VerticalDottedLine();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          5,
              (_) => Container(
            width: 1,
            height: 4,
            color: ActivityCard.primaryGreen,
          ),
        ),
      ),
    );
  }
}

class _HorizontalDottedLine extends StatelessWidget {
  const _HorizontalDottedLine();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        14,
            (_) => Expanded(
          child: Container(
            height: 1,
            margin: const EdgeInsets.symmetric(horizontal: 2),
            color: ActivityCard.dividerGrey,
          ),
        ),
      ),
    );
  }
}



// class ActivityCard extends StatelessWidget {
//   const ActivityCard({super.key});
//
//   static const Color primaryGreen = Color(0xFF00A654);
//   static const Color dividerGrey = Color(0xFFE6E6E6);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.05),
//               blurRadius: 8,
//               spreadRadius: 1,
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _userRow(),
//             const SizedBox(height: 16),
//
//             // Underline
//             const Divider(color: dividerGrey, thickness: 1),
//             const SizedBox(height: 16),
//             _locationSection(),
//             const SizedBox(height: 24),
//
//             _paymentRow(),
//             const SizedBox(height: 24),
//
//             _viewDetailsButton(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // ---------------- USER ROW ----------------
//   Widget _userRow() {
//     return Row(
//       children: [
//         const CircleAvatar(
//           radius: 28,
//           backgroundImage: NetworkImage('https://shorturl.at/WSMrn'),
//         ),
//         const SizedBox(width: 16),
//         const Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Jenny Wilson',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//               ),
//               SizedBox(height: 4),
//               Text(
//                 'User',
//                 style: TextStyle(fontSize: 14, color: Colors.grey),
//               ),
//             ],
//           ),
//         ),
//         _circleAction(Icons.chat_bubble_outline),
//         const SizedBox(width: 12),
//         _circleAction(Icons.call_outlined),
//       ],
//     );
//   }
//
//   Widget _circleAction(IconData icon) {
//     return Container(
//       width: 40,
//       height: 40,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(color: primaryGreen),
//       ),
//       child: Icon(icon, color: primaryGreen, size: 20),
//     );
//   }
//
//   // ---------------- LOCATION SECTION ----------------
//   Widget _locationSection() {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Column(
//           children: [
//             const Icon(Icons.radio_button_checked,
//                 color: primaryGreen, size: 18),
//             _verticalDottedLine(),
//             const Icon(Icons.location_on,
//                 color: primaryGreen, size: 20),
//           ],
//         ),
//         const SizedBox(width: 12),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 '85 Ave, Street Side Road, Accra, Ghana',
//                 style: TextStyle(fontSize: 15),
//               ),
//               const SizedBox(height: 12),
//               Row(
//                 children: [
//                   Expanded(
//                       child: _horizontalDottedLineN()),
//                   Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(8),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.08),
//                           spreadRadius: 3,
//                           blurRadius: 8,
//                         ),
//                       ],
//                     ),
//                     child: Center(
//                       child: const Text(
//                         '22.6 KM',
//                         style: TextStyle(
//                           color: Color(0xFF00A654),
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 12),
//               Text(
//                 '1901 Thornridge Road, Accra, Ghana',
//                 style: TextStyle(fontSize: 15),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _verticalDottedLine() {
//     return SizedBox(
//       height: 50,
//       child: CustomPaint(painter: DottedLinePainter(primaryGreen, true)),
//     );
//   }
//
//   // ---------------- PAYMENT ----------------
//   Widget _paymentRow() {
//     return Row(
//       children: [
//         Container(
//           width: 40,
//           height: 40,
//           decoration: const BoxDecoration(
//             shape: BoxShape.circle,
//             color: Color(0xFFF5F5F5),
//           ),
//           child: const Icon(Icons.payment_outlined,
//               color: primaryGreen),
//         ),
//         const SizedBox(width: 12),
//         const Text(
//           'MTN MoMo Pay',
//           style: TextStyle(fontSize: 16),
//         ),
//         const Spacer(),
//         const Text(
//           'GH₵ 50',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: primaryGreen,
//           ),
//         ),
//       ],
//     );
//   }
//
//   // ---------------- BUTTON ----------------
//   Widget _viewDetailsButton() {
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton(
//         onPressed: () {},
//         style: ElevatedButton.styleFrom(
//           backgroundColor: primaryGreen,
//           elevation: 0,
//           padding: const EdgeInsets.symmetric(vertical: 16),
//           shape:
//           RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//         ),
//         child: const Text(
//           'View Details',
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//         ),
//       ),
//     );
//   }
//
//   Widget _horizontalDottedLineN() {
//     return Row(
//       children: List.generate(
//         15,
//             (_) => Expanded(
//           child: Container(
//             height: 1,
//             margin: const EdgeInsets.symmetric(horizontal: 2),
//             color: const Color(0xFFE6E6E6),
//           ),
//         ),
//       ),
//     );
//   }
//
// }



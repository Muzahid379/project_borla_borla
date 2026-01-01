// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:project_borla/role/components/custom_container.dart';
//
// import '../../../../theme/app_color.dart';
// // import '../../../components/button/common_button.dart';
// // import '../../../components/dotted_line.dart';
// // import '../../../components/text/common_text.dart';
// import '../../../features/fragments/dotted_line_copy.dart';
// import '../../../role/components/button/common_button.dart';
// import '../../../role/components/text/common_text.dart';
// import '../../../role/garbageCollector/activity/innerWidget/common_widgets.dart';
// import '../../../role/garbageCollector/home/controller/driver_home_controller.dart';
// import '../../../role/garbageCollector/home/innerWidget/arrive_at_pickup_dialog.dart';
// // import '../controller/driver_home_controller.dart';
// // import '../navigate_destination_screen.dart';
// // import 'arrive_at_pickup_dialog.dart';
// // import 'common_widgets.dart';
//
// class BookingAcceptedSheet extends StatelessWidget {
//   const BookingAcceptedSheet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final DriverHomeController controller = Get.find();
//
//     return DraggableScrollableSheet(
//       initialChildSize: 0.50,
//       minChildSize: 0.45,
//       maxChildSize: 0.75,
//       builder: (_, scrollController) {
//         return Material(
//           color: Colors.transparent,
//           child: Container(
//             padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.vertical(
//                 top: Radius.circular(24),
//               ),
//             ),
//             child: Stack(
//               clipBehavior: Clip.none,
//               children: [
//                 SingleChildScrollView(
//                   controller: scrollController,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//
//                       const SizedBox(height: 20),
//
//                       /// Title
//                       const Center(
//                         child: CommonText(
//                           text: "Arrived At Customer Location",
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//
//                       const SizedBox(height: 12),
//                       const Divider(color: AppColors.black50, thickness: 1),
//
//                       userRow(),
//
//                       const Divider(color: AppColors.black50, thickness: 1),
//                       const SizedBox(height: 6),
//
//                       bottomSheetLocationSection(),
//
//                       const Divider(color: AppColors.black50, thickness: 1),
//                       const SizedBox(height: 10),
//
//                       paymentRow(),
//
//                       const SizedBox(height: 20),
//
//                       bottomSheetActionButtons(context),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   top: -40,
//                   left: 0,
//                   right: 0,
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: CustomContainer(
//                       height: 60,
//                       width: 60,
//                       borderRadius: 100,
//                       color: AppColors.green500,
//                       child: Icon(Icons.location_pin, color: AppColors.white, size: 35,),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//
// Widget bottomSheetLocationSection() {
//   return Row(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Column(
//         children: [
//           Icon(Icons.radio_button_checked,
//               color: AppColors.primaryColor, size: 18),
//           SizedBox(height: 6),
//           VerticalDottedLine(height: 20, dotCount: 3,),
//           SizedBox(height: 6),
//           Icon(Icons.location_on,
//               color: AppColors.primaryColor, size: 20),
//         ],
//       ),
//       const SizedBox(width: 12),
//       Expanded(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const CommonText(
//               textAlign: TextAlign.start,
//               text: '85 Ave, Side Road, Accra, Ghana',
//               fontSize: 14,
//             ),
//             const SizedBox(height: 16),
//             HorizontalDottedLine(dotCount: 20,),
//             const SizedBox(height: 12),
//             const CommonText(
//               textAlign: TextAlign.start,
//               text: '1901 Thornridge Road, Accra, Ghana',
//               fontSize: 14,
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }
//
//
// Widget bottomSheetActionButtons(BuildContext context) {
//   return CommonButton(
//     onTap: (){
//       showDialog(
//         context: context,
//         barrierDismissible: true,
//         builder: (_) => const ArriveAtPickupDialog(),
//       );
//     },
//     // onTap: controller.acceptJob,
//     buttonRadius: 12,
//     titleText: "Arrived",
//   );
// }

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/role/commonScreens/profile/profile_screen.dart';
import 'package:project_borla/role/garbageCollector/activity/innerWidget/common_widgets.dart';
import 'package:project_borla/role/garbageCollector/call/outgoing_call_screen.dart';
import 'package:project_borla/screens/chat-screen/chat_screen_copy.dart';
import 'package:project_borla/screens/choose-ride-screens/choose_ride_screen.dart';
import 'package:project_borla/screens/reject-rider-screens/reject_rider_screen.dart';

import '../../../features/fragments/dotted_line_copy.dart';
import '../../../gen/custom_assets/assets.gen.dart';
import '../../../role/commonScreens/chat/chatting_screen.dart';
import '../../../role/components/text/common_text.dart';
import '../../../role/garbageCollector/activity/controller/activity_controller.dart';
import '../../../theme/app_color.dart';
import '../../driver-information-screens/driver_information_screen.dart';
import '../../scheduled-screens/cancel_ride_screen.dart';



class BookingAcceptedSheet extends StatefulWidget {
  const BookingAcceptedSheet({super.key});

  @override
  State<BookingAcceptedSheet> createState() => _BookingAcceptedSheetState();
}

class _BookingAcceptedSheetState extends State<BookingAcceptedSheet> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [

        Container(

          decoration: BoxDecoration(

            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),

          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 580,
            child: Column(
              children: [

                const SizedBox(height: 12),


                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),

                const SizedBox(height: 36),


                Text('Your Borla has been accepted', style: TextStyle(

                    fontSize: 22,

                    fontWeight: FontWeight.w500

                ),),

                Padding(
                  padding: const EdgeInsets.fromLTRB(22,10,22,10),
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),

                //const SizedBox(height: 16),

                Padding(
                  padding: const EdgeInsets.fromLTRB(22,8,22,10),
                  child: userRowModClick(),
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(22,0,22,0),
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(22,8,22,10),
                  child: bottomSheetLocationSectionMod(),
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(22,0,22,0),
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(22,8,22,10),
                  child: summarySection(),
                ),

                //RippleAnimation(),

                SizedBox(height: 20,),

                // Padding(
                //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                //   child: userPaymentRow(),
                // ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(2), // border thickness
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100, 50),
                      backgroundColor: Colors.white, // white button
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14), // inner radius
                      ),
                    ),
                    onPressed: () {
                      Get.to(()=>CancelRideScreen());
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(120, 14, 120, 14),

                      child: Text(
                        'Cancel Ride',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),



        ),
        Positioned(
          top: -40,
            right: 170,
            child: Image.asset('assets/images/orange_tick.png')
        ),
      ],
    );
  }


  Widget userRowModClick() {
    return Row(
      children: [
        InkWell(
          onTap: (){
            Get.to(()=>DriverInformationScreen());
          },
          child: const CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage('https://shorturl.at/WSMrn'),
          ),
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
              // CommonText(
              //   text: 'User',
              //   fontSize: 14,
              //   color: Colors.grey,
              // ),

              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber,),
                  SizedBox(width: 2,),
                  Text('5.0', style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black54
                  ),),
                  SizedBox(width: 6,),
                  Text('(1.2k rides)', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54
                  ),)
                ],
              )


            ],
          ),
        ),
        ActivityController.instance.selectedIndex.value == 0?
        Row(
          children: [
            InkWell(
                onTap: () {
                  Get.to(()=> UserChattingScreen());
                },
                child: circleActionMod(
                    Image.asset('assets/images/user_msg.png',height: 20, width: 20,)
                )),
            const SizedBox(width: 12),
            //circleAction(Assets.icons.callIcon.image(height: 20, width: 20)),
            InkWell(
              onTap: () {
                Get.to(()=> OutgoingCallScreen());
              },
              child: circleActionMod(
                  //Assets.icons.callIcon.image(height: 20, width: 20)
                Image.asset('assets/images/user_call.png',height: 20, width: 20,)

              ),
            ),

          ],
        ) : ActivityController.instance.selectedIndex.value == 1?
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

  Widget circleActionMod(Image icon) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.amber),
      ),
      child: Center(child: icon),
    );
  }

  Widget bottomSheetLocationSectionMod() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Icon(Icons.radio_button_checked,
                color: Colors.amber, size: 18),
            SizedBox(height: 6),
            VerticalDottedLine(),
            SizedBox(height: 6),
            Icon(Icons.location_on,
                color:  Colors.amber, size: 20),
          ],
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Current Location + Time Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CommonText(
                    text: 'Current Location',
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                  CommonText(
                    text: '02.30 PM',
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const CommonText(
                textAlign: TextAlign.start,
                text: '85 Ave, Side Road, Accra, Ghana',
                fontSize: 14,
              ),
              const SizedBox(height: 8),
              const Divider(color: AppColors.black50, thickness: 1),
              const SizedBox(height: 4),
              // Pickup Point + Time Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CommonText(
                    text: 'Pickup Point',
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                  CommonText(
                    text: '03.10 PM',
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const CommonText(
                textAlign: TextAlign.start,
                text: '1901 Thornridge Road, Accra, Ghana',
                fontSize: 14,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget summarySection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Total Price
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CommonText(
                text: 'Total Price',
                fontSize: 13,
                color: Colors.grey,
              ),
              SizedBox(height: 4),
              CommonText(
                text: 'GH₵ 50',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ],
          ),

          // Vertical divider
          Container(
            height: 40,
            width: 1,
            color: Colors.grey,
          ),

          // Total Distance
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CommonText(
                text: 'Total Distance',
                fontSize: 13,
                color: Colors.grey,
              ),
              SizedBox(height: 4),
              CommonText(
                text: '22.6 KM',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ],
          ),

          // Vertical divider
          Container(
            height: 40,
            width: 1,
            color: Colors.grey,
          ),

          // Avg. Time
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              CommonText(
                text: 'Avg. Time',
                fontSize: 13,
                color: Colors.grey,
              ),
              SizedBox(height: 4),
              CommonText(
                text: '40:00 M',
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget userPaymentRow() {
    return Row(
      children: [
        const SizedBox(width: 12),
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.gray200,
          ),
          // child:  Icon(
          //   Icons.payment_outlined,
          //   color: AppColors.primaryColor,
          // ),
          child: Image.asset('assets/images/payment.png'),
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
        // const CommonText(
        //   text: 'GH₵ 50',
        //   fontSize: 20,
        //   fontWeight: FontWeight.bold,
        //   color: Colors.amber,
        // ),

        IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_forward_ios)
        )


      ],
    );
  }


}

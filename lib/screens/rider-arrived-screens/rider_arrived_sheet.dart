import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/screens/driver-information-screens/driver_information_screen.dart';
import 'package:project_borla/screens/payment-success-screens/payment_success_screeen.dart';

import '../../role/components/text/common_text.dart';
import '../../role/garbageCollector/activity/controller/activity_controller.dart';
import '../../theme/app_color.dart';
import '../../widgets/gradient_button.dart';

class RiderArrivedSheet extends StatefulWidget {
  const RiderArrivedSheet({super.key});

  @override
  State<RiderArrivedSheet> createState() => _RiderArrivedSheetState();
}

class _RiderArrivedSheetState extends State<RiderArrivedSheet> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,

      children: [

        Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),

            child: Column(

              children: [


                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),

                const SizedBox(height: 46),


                Text('Rider Have Arrived', style: TextStyle(

                    fontSize: 22,

                    fontWeight: FontWeight.w500

                ),),


                Padding(
                  padding: const EdgeInsets.fromLTRB(22,0,22,0),
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(20,8,20,8,),
                  child: userRowMod(),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(22,0,22,0),
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: summarySection(),
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(22,0,22,0),
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                  ),
                ),


                Padding(
                  padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                  child: userPaymentRow(),
                ),


                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: GradientButton(
                    text: 'Pay Now',
                    onPressed: () {
                      Get.to(()=> PaymentSuccessScreeen());
                    },
                  ),
                ),





              ],
            )


        ),
        Positioned(
            height: 90,
            width: 90,
            top: -50,
            right: 160,
            child: Image.asset('assets/images/user_large_pin.png')
        ),
      ],
    );
  }

  Widget userRowMod() {
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
                 // Get.to(()=> ChattingScreen());
                },
                child: circleActionMod(
                    Image.asset('assets/images/user_msg.png',height: 20, width: 20,)
                )),
            const SizedBox(width: 12),
            //circleAction(Assets.icons.callIcon.image(height: 20, width: 20)),
            circleActionMod(
              //Assets.icons.callIcon.image(height: 20, width: 20)
                Image.asset('assets/images/user_call.png',height: 20, width: 20,)

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

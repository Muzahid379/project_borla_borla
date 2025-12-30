import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_borla/theme/app_color.dart';

import '../../gen/custom_assets/assets.gen.dart';
import '../../widgets/action_button_widget.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/gradient_button.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {

  RxString selectedPlace = "".obs;

  TextEditingController titleController = TextEditingController();
  TextEditingController placeNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(

            begin: Alignment.topLeft,
            end: Alignment.bottomRight ,
            colors: [
              Color.fromRGBO(255, 246, 217, 1),
              Color.fromRGBO(255, 255, 255, 1),
            ],
          ),
        ),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(26, 70, 20, 20),
              child: Row(
                children: [
                  Container(
                    width: 38,
                    height: 38,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                          color: Colors.black.withAlpha(40),
                        ),
                      ],
                    ),

                    child: IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 22,
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),

                  SizedBox(width: 90),

                  Text('Add Place', style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                  ),)
                ],
              ),
            ),

            SizedBox(height: 20,),

            Image.asset('assets/images/map.png'),

            SizedBox(height: 40),

            Obx(() => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconLabelAction(
                      icon: Assets.icons.homeIcon.image(height: 26, width: 26, color: selectedPlace.value == 'Home' ? AppColors.orange300 : AppColors.gray300,),
                      label: 'Home',
                      selected: selectedPlace.value == 'Home' ? true : false,
                      onTap: (){
                        titleController.text = 'Home';
                        selectedPlace.value = 'Home';
                      }
                  ),
                  IconLabelAction(
                      icon: Assets.icons.officeIcon.image(height: 26, width: 26, color: selectedPlace.value == 'Office' ? AppColors.orange300 : AppColors.gray300,),
                      label: 'Office',
                      selected: selectedPlace.value == 'Office' ? true : false,
                      onTap: (){
                        titleController.text = 'Office';
                        selectedPlace.value = 'Office';
                      }
                  ),
                  IconLabelAction(
                      icon: Assets.icons.shopIcon.image(height: 26, width: 26, color: selectedPlace.value == 'Shop' ? AppColors.orange300 : AppColors.gray300,),
                      label: 'Shop',
                      selected: selectedPlace.value == 'Shop' ? true : false,
                      onTap: (){
                        titleController.text = 'Shop';
                        selectedPlace.value = 'Shop';
                      }
                  ),
                  IconLabelAction(
                      icon: Assets.icons.hotelIcon.image(height: 26, width: 26, color: selectedPlace.value == 'Hotel' ? AppColors.orange300 : AppColors.gray300),
                      label: 'Hotel',
                      selected: selectedPlace.value == 'Hotel' ? true : false,
                      onTap: (){
                        titleController.text = 'Hotel';
                       selectedPlace.value = 'Hotel';
                      }
                  ),

                ],



              ),
            ),),

            Padding(
              padding: const EdgeInsets.fromLTRB(22,20,22,20),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  const SizedBox(height: 6),

                  Text('Place Title', style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14
                  ),),

                  const SizedBox(height: 6),

                  CustomTextField(
                    controller: titleController,
                    hint: 'Hotel',
                    prefix: Image.asset('assets/images/second_pin.png'),
                  ),

                  const SizedBox(height: 14),

                  Text('Place Name', style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14
                  ),),

                  const SizedBox(height: 6),

                  CustomTextField(
                    hint: 'Chittagong, Ghana',
                    prefix: Image.asset('assets/images/second_pin.png'),
                  ),

                  const SizedBox(height: 14),

                  Text('Address', style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14
                  ),),

                  const SizedBox(height: 6),

                  CustomTextField(
                    hint: 'Studio 08 Jake Stream',
                    prefix: Image.asset('assets/images/third_pin.png'),
                    //suffix: Image.asset('assets/images/third_pin.png'),
                    suffix: Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Image.asset('assets/images/target_icon.png',),
                    ),
                  ),



                  const SizedBox(height: 16),


                  const SizedBox(height: 8),


                  const SizedBox(height: 16),

                  GradientButton(
                    text: 'Save Place',
                    onPressed: () {
                      Navigator.pop(context);
                      //Get.to(OtpScreen());
                    },
                  ),


                ],
              ),
            ),





            // Text("Content")
          ],
        ),
      ),
    );
  }
}

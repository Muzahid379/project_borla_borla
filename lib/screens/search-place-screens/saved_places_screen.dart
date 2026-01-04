import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../gen/custom_assets/assets.gen.dart';
import '../../widgets/action_button_widget.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/gradient_button.dart';

class SavedPlacesScreen extends StatefulWidget {
  const SavedPlacesScreen({super.key});

  @override
  State<SavedPlacesScreen> createState() => _SavedPlacesScreenState();
}

class _SavedPlacesScreenState extends State<SavedPlacesScreen> {

  bool isHome = false;
  bool isOffice = false;
  bool isShop = false;
  bool isHotel = false;

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
                          onPressed: () {},
                        ),
                      ),

                      SizedBox(width: 90),

                      Text('Saved Places', style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Image.asset('assets/images/map_2.png'),

                SizedBox(height: 40),

                Row(

                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [

                    SizedBox(width: 50,),

                    IconLabelAction(
                        icon: Assets.icons.homeIcon.image(height: 20, width: 20),
                      label: 'Home',
                        selected: isHome,
                      onTap: (){
                        setState(() => isHome = !isHome);
                      }
                    ),

                    SizedBox(width: 26,),


                    IconLabelAction(
                        icon: Assets.icons.officeIcon.image(height: 20, width: 20),
                        label: 'office',
                        selected: isOffice,
                        onTap: (){
                          setState(() => isOffice = !isOffice);
                        }
                    ),

                    SizedBox(width: 26,),

                    IconLabelAction(
                        icon: Assets.icons.shopIcon.image(height: 20, width: 20),
                        label: 'Shop',
                        selected: isShop,
                        onTap: (){
                          setState(() => isShop = !isShop);
                        }
                    ),

                    SizedBox(width: 26,),

                    IconLabelAction(
                        icon: Assets.icons.hotelIcon.image(height: 20, width: 20),
                        label: 'Hotel',
                        selected: isHotel,
                        onTap: (){
                          setState(() => isHotel = !isHotel);
                        }
                    ),

                  ],



                ),

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
                        hint: 'Hotel',
                        prefix: Image.asset('assets/images/second_pin_2.png'),
                      ),

                      const SizedBox(height: 14),

                      Text('Place Name', style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14
                      ),),

                      const SizedBox(height: 6),

                      CustomTextField(
                        hint: 'Chittagong, Ghana',
                        prefix: Image.asset('assets/images/second_pin_2.png'),
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
                          child: Image.asset('assets/images/target_2.png',),
                        ),
                      ),



                      const SizedBox(height: 16),


                      const SizedBox(height: 8),


                      const SizedBox(height: 16),

                      GradientButton(
                        text: 'Save Place',
                        onPressed: () {
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

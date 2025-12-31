import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:project_borla/theme/gradient_scaffold_copy.dart';


import '../../models/radio_enums.dart';
import '../../widgets/gradient_button.dart';
import '../reject-rider-screens/reject_rider_screen.dart';

class CancelRideScreen extends StatefulWidget {
  const CancelRideScreen({super.key});

  @override
  State<CancelRideScreen> createState() => _CancelRideScreenState();
}

class _CancelRideScreenState extends State<CancelRideScreen> {

  Frequency _selectedValue = Frequency.opn1;



  @override
  Widget build(BuildContext context) {
    return UserGradientScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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

                SizedBox(width: 80),

                Text('Cancel Ride', style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500
                ),)
              ],
            ),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.fromLTRB(26, 0, 0, 0),
            child: Text(
              'Please select the reason for cancellation:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade700
              ),
            ),
          ),

          SizedBox(height: 28),

          Column(
            children: [
              RadioListTile<Frequency>(
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -3,
                ),
                fillColor: WidgetStateProperty.resolveWith<Color>(
                      (states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.amber; // selected color
                    }
                    return Colors.amber; // unselected color
                  },
                ),
                title: Text('Change in plans', style: TextStyle(

                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500


                )),
                value: Frequency.opn1,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() => _selectedValue = value!);
                },
              ),
              RadioListTile<Frequency>(
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -3,
                ),
                fillColor: WidgetStateProperty.resolveWith<Color>(
                      (states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.amber; // selected color
                    }
                    return Colors.amber; // unselected color
                  },
                ),
                title:  Text('Waiting for long time', style: TextStyle(

                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500


                )),
                value: Frequency.opn2,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() => _selectedValue = value!);
                },
              ),
              RadioListTile<Frequency>(
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -3,
                ),
                fillColor: WidgetStateProperty.resolveWith<Color>(
                      (states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.amber; // selected color
                    }
                    return Colors.amber; // unselected color
                  },
                ),
                title:  Text('Unable to contact driver', style: TextStyle(

                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500


                )),
                value: Frequency.opn3,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() => _selectedValue = value!);
                },
              ),
              RadioListTile<Frequency>(
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -3,
                ),
                fillColor: WidgetStateProperty.resolveWith<Color>(
                      (states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.amber; // selected color
                    }
                    return Colors.amber; // unselected color
                  },
                ),
                title: Text('Driver denied to go to destination', style: TextStyle(

                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500


                )),
                value: Frequency.opn4,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() => _selectedValue = value!);
                },
              ),
              RadioListTile<Frequency>(
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -3,
                ),
                fillColor: WidgetStateProperty.resolveWith<Color>(
                      (states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.amber; // selected color
                    }
                    return Colors.amber; // unselected color
                  },
                ),
                title:Text('Driver denied to come to pickup', style: TextStyle(

                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500


                )),
                value: Frequency.opn5,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() => _selectedValue = value!);
                },
              ),
              RadioListTile<Frequency>(
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -3,
                ),
                fillColor: WidgetStateProperty.resolveWith<Color>(
                      (states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.amber; // selected color
                    }
                    return Colors.amber; // unselected color
                  },
                ),
                title: Text('Wrong address shown', style: TextStyle(

                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500


                )),
                value: Frequency.opn6,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() => _selectedValue = value!);
                },
              ),
              RadioListTile<Frequency>(
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -3,
                ),
                fillColor: WidgetStateProperty.resolveWith<Color>(
                      (states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.amber; // selected color
                    }
                    return Colors.amber; // unselected color
                  },
                ),
                title:  Text('The price is not reasonable', style: TextStyle(

                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500


                )),
                value: Frequency.opn7,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() => _selectedValue = value!);
                },
              ),
              RadioListTile<Frequency>(
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -3,
                ),
                fillColor: WidgetStateProperty.resolveWith<Color>(
                      (states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.amber; // selected color
                    }
                    return Colors.amber; // unselected color
                  },
                ),
                title: Text('Emergency situation', style: TextStyle(

                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500


                )),
                value: Frequency.opn8,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() => _selectedValue = value!);
                },
              ),
              RadioListTile<Frequency>(
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -3,
                ),
                fillColor: WidgetStateProperty.resolveWith<Color>(
                      (states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.amber; // selected color
                    }
                    return Colors.amber; // unselected color
                  },
                ),
                title:  Text('Book mistake', style: TextStyle(

                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500


                )),
                value: Frequency.opn9,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() => _selectedValue = value!);
                },
              ),
              RadioListTile<Frequency>(
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -3,
                ),
                fillColor: WidgetStateProperty.resolveWith<Color>(
                      (states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.amber; // selected color
                    }
                    return Colors.amber; // unselected color
                  },
                ),
                title:  Text('Poor weather conditions', style: TextStyle(

                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500


                )),
                value: Frequency.opn10,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() => _selectedValue = value!);
                },
              ),
              RadioListTile<Frequency>(
                fillColor: WidgetStateProperty.resolveWith<Color>(
                      (states) {
                    if (states.contains(WidgetState.selected)) {
                      return Colors.amber; // selected color
                    }
                    return Colors.amber; // unselected color
                  },
                ),
                visualDensity: const VisualDensity(
                  horizontal: -4,
                  vertical: -3,
                ),

                title: Text('Other', style: TextStyle(

                    fontSize: 17,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500


                )),
                value: Frequency.opn11,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() => _selectedValue = value!);
                },
              ),
            ],
          ),
          SizedBox(height: 48),

          Padding(
            padding: const EdgeInsets.fromLTRB(20,0,20,0),
            child: GradientButton(
              text: 'Confirm',
              onPressed: () {
                Get.to(()=>RejectRiderScreen());
              },
            ),
          ),

          // Text("Content")
        ],
      ),
    );
  }
}

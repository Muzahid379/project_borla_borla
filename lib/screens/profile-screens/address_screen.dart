import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_borla/theme/gradient_scaffold_copy.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
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

                  Text('Address', style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                  ),)
                ],
              ),
            ),

            Container(

              height: 200,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade400)
              ),



            )




          ],


        )
    );
  }
}

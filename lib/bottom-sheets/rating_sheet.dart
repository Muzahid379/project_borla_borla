import 'package:flutter/material.dart';

import '../widgets/gradient_button.dart';

class RatingSheet extends StatefulWidget {
  const RatingSheet({super.key});

  @override
  State<RatingSheet> createState() => _RatingSheetState();
}

class _RatingSheetState extends State<RatingSheet> {

  int index1 = 1 ;
  int index2 = 2 ;
  int index3 = 3 ;
  int index4 = 4 ;
  int index5 = 5 ;

  int selectedIndex1 = -1 ;
  int selectedIndex2 = -1 ;
  int selectedIndex3 = -1 ;
  int selectedIndex4 = -1 ;
  int selectedIndex5 = -1 ;


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          //color: Color.fromRGBO(255, 237, 176, 1),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),

        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
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

            const SizedBox(height: 16),


            Text('How was the rider?', style: TextStyle(

                fontSize: 22,

                fontWeight: FontWeight.w500

            ),),

            //const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.fromLTRB(22,0,22,0),
              child: Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            ),

            //const SizedBox(height: 16),


            Padding(
              padding: const EdgeInsets.fromLTRB(22,6,22,6),
              child: Container(
                decoration: BoxDecoration(


                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.amber,),
                  color: Color.fromRGBO(255, 237, 176, 0.1),


                ),
                width: 320,
                height: 80,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    InkWell(
                      onTap: () {
                        selectedIndex1 = index1 ;
                        setState(() {

                        });
                      },
                      child: Icon(
                        Icons.star,
                        color: selectedIndex1 == index1? Colors.amber : Colors.grey.shade300 ,
                        size: 42,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        selectedIndex5 = index5 ;
                        setState(() {

                        });
                      },
                      child: Icon(
                        Icons.star,
                        color: selectedIndex5 == index5? Colors.amber : Colors.grey.shade300 ,
                        size: 42,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {

                        });
                        selectedIndex2 = index2 ;
                      },
                      child: Icon(
                        Icons.star,
                        color: selectedIndex2 == index2? Colors.amber : Colors.grey.shade300 ,
                        size: 42,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        selectedIndex3 = index3 ;
                        setState(() {

                        });
                      },
                      child: Icon(
                        Icons.star,
                        color: selectedIndex3 == index3? Colors.amber : Colors.grey.shade300 ,
                        size: 42,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        selectedIndex4 = index4 ;
                        setState(() {

                        });
                      },
                      child: Icon(
                        Icons.star,
                        color: selectedIndex4 == index4? Colors.amber : Colors.grey.shade300 ,
                        size: 42,
                      ),
                    ),

                  ],


                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Great 5 star! Can't get any better than that!", style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade400
              ),),
            ),


            SizedBox(height: 40,),

            Container(
              height: 160,
              width: 360,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey)
              ),
              child: Column(
                children: [
                  Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Payment', style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('MTN MoMo Pay', style: TextStyle(
                        color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Price', style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('GHC 50', style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(22,0,22,0),
                    child: Divider(
                      color: Colors.black54,
                      thickness: 3,
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Total Price', style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('GHC 50', style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500
                        ),),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 40,),


            Padding(
              padding: const EdgeInsets.all(22.0),
              child: GradientButton(
                text: 'Submit Now',
                onPressed: () {
                  //Get.to(OtpScreen());
                  //Navigator.pop(context);
                  //ShowPaymentSheet(context);

                },
              ),
            ),





          ],
        )


    );
  }
}

import 'package:flutter/material.dart';
import 'package:watch_commerce_ui/utils/app_colors.dart';

class PromotionCardWidget extends StatelessWidget {
  const PromotionCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryColor,
   shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25)
   ),
   child: Container(
    padding: const EdgeInsets.only(
      left: 20
    ),
height: MediaQuery.of(context).size.height/4,
child:  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
const Text("WSD-OOG", 
style: TextStyle(
  color: Colors.black
),
)
, 

const Text("WISHDOIT", 
style: TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: AppColors.secondaryyColor
),
), 
const SizedBox(height: 10,),
const SizedBox(
  width:  150,
  child: Text(""" Distinctive pole-position style characterises this men
Tommy Hilfiger sport watch. The 46mm rose gold toned case features a crown-protector and bold bezel.
The silicone straps give a supercharged spin with  """, 
  maxLines: 3,
  style: TextStyle(
    fontSize: 18,
    // fontWeight: FontWeight.bold,
    color: AppColors.secondaryyColor
  ),
  ),
), 

const SizedBox(height: 10,),

Container( 
  height: 40, 
  width: 140, 
  decoration: BoxDecoration(
    color: AppColors.ColowhiteColor, 
    borderRadius: BorderRadius.circular(15), 

    boxShadow: [ 
      BoxShadow(
        color: Colors.grey.withOpacity(.20) , 
        offset: const Offset(1, 3) , 
        blurRadius: 5, 
        spreadRadius: 2
      )
    ]
  ),
  child: Center(
    child: 
    TextButton.icon(onPressed: (){

    },
    iconAlignment: IconAlignment.end,
    icon: const Icon(Icons.arrow_right_alt_outlined, 
          color: AppColors.goldenColor , 

    ),
     label: const Text('BUY NOW', 
    
    style: TextStyle(
      color: AppColors.goldenColor , 
      fontWeight: FontWeight.bold,


    ),
    ))
    ,
  ),
)

  ],
)
, 

Image.asset("assets/images/watch1.png")


  ],
) ,

   ),
    );
  }
}
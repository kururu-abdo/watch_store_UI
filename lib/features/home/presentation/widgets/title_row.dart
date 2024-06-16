import 'package:flutter/material.dart';
import 'package:watch_commerce_ui/utils/app_colors.dart';

class TitleRow extends StatelessWidget {
  final String? smallWord;
    final String? bigWord;
final Function()? onForwad;
final Function()? onBackword;
final bool? isForwardEnabled;
final bool? isbackwardEnabled;


  const TitleRow({super.key, this.smallWord, this.bigWord, this.onForwad, this.onBackword, this.isForwardEnabled, this.isbackwardEnabled});

  @override
  Widget build(BuildContext context) {
    return 
    Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [

Column(

  crossAxisAlignment: CrossAxisAlignment.start,
  children: [

Text(smallWord!, 

style: const TextStyle(
  color: AppColors.ColowhiteColor, 
  fontSize: 15, 
  
)
), 

Text(bigWord!, 

style: const TextStyle(
  color: AppColors.ColowhiteColor, 
  fontSize: 30, 
  fontWeight: FontWeight.bold
  
)
)


  ],
) , 


const Row(
  mainAxisSize: MainAxisSize.min,
  children: [
Icon(Icons.arrow_back_ios, 
color: AppColors.goldenColor,
), 
SizedBox(width: 5,),
Icon(Icons.arrow_forward_ios, 
color: AppColors.goldenColor,
), 
  ],
)



],

    );



  }
}
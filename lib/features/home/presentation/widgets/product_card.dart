import 'package:flutter/material.dart';
import 'package:watch_commerce_ui/features/details/presentation/screens/details.dart';
import 'package:watch_commerce_ui/utils/app_colors.dart';

class ProductCard extends StatelessWidget {
  final Function()? onTap;
  final String? tag;
  const ProductCard({super.key, this.onTap, this.tag});

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: (){
       onTap!();
      },
      child: Container(
      width:  
      MediaQuery.of(context).size.width*.40,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Container(
        height: MediaQuery.of(context).size.height*.30, 
        width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), 
      
        color: AppColors.primaryColor, 
      
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
      
      Hero(
        tag: tag!,
        child: Image.asset('assets/images/watch2.png')),
      
      
      PositionedDirectional(
        end: 15,
        top: 20,
        child: 
      Container(
        width: 30,height: 30, 
        decoration: BoxDecoration(
      color: AppColors.goldenColor, 
      borderRadius: BorderRadius.circular(8), 
      
        ),
        child: const Center(
      child: Icon(Icons.favorite ,color: Colors.white,),
        ),
      )
      )
        ],
      ),
      ), 
      
      const SizedBox(height: 10), 
      const Text("TOMMY MILFIDEN", 
      style: TextStyle(
        color: AppColors.ColowhiteColor , 
      fontSize: 10
      ),
      ), 
      
      const Text("GRANT WATCH", 
      style: TextStyle(
        color: AppColors.ColowhiteColor , 
      fontSize: 20,fontWeight: FontWeight.w500
      ),
      ), 
      
      
        ],
      ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:watch_commerce_ui/features/details/presentation/screens/details.dart';
import 'package:watch_commerce_ui/features/home/presentation/widgets/product_card.dart';
import 'package:watch_commerce_ui/features/home/presentation/widgets/promotion_card.dart';
import 'package:watch_commerce_ui/features/home/presentation/widgets/title_row.dart';
import 'package:watch_commerce_ui/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(

  leading:    const Icon(Icons.menu,
   color: AppColors.ColowhiteColor,), 
  backgroundColor: Colors.transparent,
  actions: const [


  Icon(Icons.search,   color: AppColors.ColowhiteColor, 
), 
  SizedBox(width: 8,),
  Icon(Icons.shopping_cart_outlined,   color: AppColors.ColowhiteColor, 
), 
  SizedBox(width: 8,)


],),
backgroundColor: AppColors.secondaryyColor,


body:   SizedBox.expand(child: 

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(children: [
  
  const TitleRow(
    smallWord: 'FEATURED',
    bigWord: 'PRODUCTS',
  ), 
  const SizedBox(height: 20), 
  const PromotionCardWidget(),
  const SizedBox(height: 20), 
  
  const TitleRow(
    smallWord: 'TRENDING',
    bigWord: 'PRODUCTS',
  ), 
  const SizedBox(height: 20), 
  
  Expanded(
    child: ListView (
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children:  [
    ProductCard(tag: 'product',
    
    onTap: ()=> Navigator.of(context).push(
            MaterialPageRoute(builder: (_)=>const ProductDetailsScreen(
              tag: 'product',
            ))
          ),
    ), 
    ProductCard(tag: 'product1', 
    
    onTap: ()=> Navigator.of(context).push(
            MaterialPageRoute(builder: (_)=>const ProductDetailsScreen(
              tag: 'product1',
            ))
          ),
    ) ,ProductCard(tag: 'product2',onTap: ()=> Navigator.of(context).push(
            MaterialPageRoute(builder: (_)=>const ProductDetailsScreen(
              tag: 'product2',
            ))
          ),)
    ],),
  )
  
  
  
  
  
  ],),
)
,),
    );
  }
}
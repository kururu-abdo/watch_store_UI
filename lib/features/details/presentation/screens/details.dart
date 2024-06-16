import 'package:flutter/material.dart';
import 'package:watch_commerce_ui/shared/presentation/screen/app.dart';
import 'package:watch_commerce_ui/utils/app_colors.dart';
import 'dart:math' as math;
class ProductDetailsScreen extends StatefulWidget {
  final String? tag;
  const ProductDetailsScreen({super.key, this.tag});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

     
body: SizedBox.expand(
  child: Container(decoration: const BoxDecoration(
    color: AppColors.secondaryyColor,
    
  ),
  child: Column(
    children: [
     
CustomPaint(
  painter: BackgroundPainter(),
  child: SizedBox(
    height: MediaQuery.of(context).size.height*.60, 
    child: Column(
      
      children: [
        const SizedBox(height: 50,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

IconButton(onPressed: (){
  Navigator.pop(context);
}, icon: const Icon(Icons.arrow_back_outlined, color: AppColors.ColowhiteColor,

)), 


const Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.search ,  color: AppColors.ColowhiteColor ), 
SizedBox(width: 8,),
        Icon(Icons.shopping_cart_outlined ,  color: AppColors.ColowhiteColor )
  ],
)

          ],
         ),
        Expanded(
          child: Stack(
            children: [
          
           PositionedDirectional(
            end: 10,
            top: 100, 
            
            child: 
            SizedBox(
              width: 40,
              child: RotatedBox(
                            quarterTurns: 3, 
              
              child:   SizedBox(
                        
                        child: Text("TOMMY HILFIGER", 
                        
                        style: TextStyle(
              
              color: AppColors.goldenColor.withOpacity(.6), 
              fontSize: 36, fontWeight: FontWeight.bold
                        ),
                        
                        ),
              ),
              ),
            )
            
            )
          
          ,
          
          PositionedDirectional(
            end: 10,
            top: 50, 
            child: Hero(
               tag: widget.tag!,
              child: Image.asset('assets/images/watch2.png', 
              
              height: (MediaQuery.of(context).size.height/2)*.80,
              // width: 180,
              ),
            ),
          
          
          )
          
          ,  
          const PositionedDirectional(
            top: 50,
            start: 20, 
            child: 
            
            Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
          
          Icon(Icons.keyboard_arrow_up, color: AppColors.ColowhiteColor,)
          , 
          SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
          Text("BRAND" , 
          style: TextStyle(
            color: AppColors.ColowhiteColor, 
            fontSize: 14
          ),
          ), 
          
          Text("HILFIGER" , 
          style: TextStyle(
            color: AppColors.ColowhiteColor, 
            fontSize: 22
          ),
          ), 
            ],
          )
          
          ,
          SizedBox(height: 8,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
          Text("STRAP" , 
          style: TextStyle(
            color: AppColors.ColowhiteColor, 
            fontSize: 14
          ),
          ), 
          
          Text("SILICONE" , 
          style: TextStyle(
            color: AppColors.ColowhiteColor, 
            fontSize: 22
          ),
          ), 
            ],
          )
          ,SizedBox(height: 8,),
          
          
          
          
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
          Text("COLOR" , 
          style: TextStyle(
            color: AppColors.ColowhiteColor, 
            fontSize: 14
          ),
          ), 
          
          Text("ROSE GOLD" , 
          style: TextStyle(
            color: AppColors.ColowhiteColor, 
            fontSize: 22
          ),
          ), 
            ],
          )
          
          ,
          SizedBox(height: 8,),
          
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
          Text("WARANTY" , 
          style: TextStyle(
            color: AppColors.ColowhiteColor, 
            fontSize: 14
          ),
          ), 
          
          Text("2 YEARS" , 
          style: TextStyle(
            color: AppColors.ColowhiteColor, 
            fontSize: 22
          ),
          ), 
            ],
          )
          
          ,
            ],
          ),
          
          SizedBox(height: 10,),
          
          Icon(Icons.keyboard_arrow_down, color: AppColors.ColowhiteColor,)
          
          
          
          ],
            )
          
          )
          
          
          
          
            ],
          ),
        ),
      ],
    ),
  ),
)

, 

  Expanded(child: Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 15,horizontal: 20
    ),
    child: Column(
    children: [
    const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
    Column(
      mainAxisSize: MainAxisSize.min, 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("TRENDING PRODUCTS" , 
        style: TextStyle(
          color: AppColors.ColowhiteColor, 
          fontSize: 15
        ),
        ), 
    Text("DECKER WATCH" , 
        style: TextStyle(
          color: AppColors.ColowhiteColor, 
          fontSize: 22,  fontWeight: FontWeight.bold
        ),
        ), 
    
      ],
    ), 
    
    Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text("PRICE", 
       style: TextStyle(
          color: AppColors.ColowhiteColor, 
          fontSize: 15
        ),
      
      ), 
    
       Text("345\$", 
       style: TextStyle(
          color: AppColors.primaryColor, 
          fontSize: 22 ,fontWeight: FontWeight.bold
        ),
      
      )
    ],
    )
    
    ],)
    
    
    , 
    const SizedBox(
    height:20
    
    ),
    SizedBox(
    width: MediaQuery.of(context).size.width, 
    child: const Text(""" Distinctive pole-position style characterises this men
    Tommy Hilfiger sport watch. The 46mm rose gold toned case features a crown-protector and bold bezel.
    The silicone straps give a supercharged spin with racing stripes and a textural checker-board pattern: watch is the rocing starof the collection featuring the""", 
    textAlign: TextAlign.justify,
    maxLines: 10,
    style: TextStyle(
    fontSize: 14 , color: AppColors.ColowhiteColor
    ),
    ),
    ), 
    const Spacer(), 
    
    Row(
    children: [
    Expanded(child: Container(
    height: 60, 
    decoration:  BoxDecoration(
      color: AppColors.primaryColor, 
      borderRadius: BorderRadius.circular(15)
    ),
    child: const Center(
      child: Text(
        "ADD TO CART" , 
        style: TextStyle(
          color: AppColors.secondaryyColor, 
          fontSize: 22 ,fontWeight: FontWeight.bold
        ),
      ),
    ),
    ), 
    
  
    ), 
    
    const SizedBox(width: 20,), 
    Container(
    height: 60, 
    width: 60,
    decoration:  BoxDecoration(
      color: AppColors.primaryColor, 
      borderRadius: BorderRadius.circular(15)
    ),
    child: const Center(
      child: Icon(Icons.favorite_outlined , 
      color: AppColors.pinkColor,size: 30,
      ),
    ),
    )
    ],
    )
    ,
    const SizedBox(height: 30,)
    
    
    
    
    
    
    ],
    
    ),
  ))

    ],
  ),
  
  
  ),
),
    );
  }
}

class BackgroundPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var painter = Paint()
    ..color=AppColors.primaryColor
    ..style=PaintingStyle.fill
    ;

  var path = Path() 
  ..moveTo(size.width*.60, 0)
  ..lineTo(size.width*.60, size.height*.80)
  ..quadraticBezierTo(size.width*.60, size.height*.99, size.width, size.height)
  ..lineTo(size.width, 0)
  ..close()
  ;


canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(BackgroundPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BackgroundPainter oldDelegate) => true;
}
import 'package:flutter/material.dart';
import 'package:play_list/core/theme/app_colors.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({super.key});
  
  get index => 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Image.asset("assets/images/quran.jpg",
        fit: BoxFit.cover,),      
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios,
          color: AppColors.whiteColor,)),
        
          IconButton(onPressed: (){},
           icon: Icon(Icons.favorite,
           color: AppColors.purpleColor,))
        ],),
      )

      ],
     );
  }
}
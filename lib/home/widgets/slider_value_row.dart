import 'package:flutter/material.dart';
import 'package:play_list/core/theme/app_colors.dart';

class SliderValueRow extends StatelessWidget {
  const SliderValueRow({super.key, required this.txt1, required this.txt2});
  final String txt1;
   final String txt2;

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(children: [
        Text(txt1,
        style: TextStyle(
          fontSize: 12,
           color: AppColors.whiteColor
        ),),
        Spacer(),
        Text(txt2,
        style: TextStyle(
          fontSize: 12,
          color: AppColors.whiteColor
        ),)
      ],),
    );
  }
}
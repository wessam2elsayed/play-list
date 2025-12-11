import 'package:flutter/material.dart';
import 'package:play_list/core/theme/app_colors.dart';

class Circle extends StatelessWidget {
  const Circle({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 145,
          backgroundColor: AppColors.purpleColor,
          child: CircleAvatar(radius: 140,
          backgroundImage: AssetImage("assets/images/quran.jpg"),),
        
          );
  }
}
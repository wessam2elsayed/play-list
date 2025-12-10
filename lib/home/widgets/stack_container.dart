import 'package:flutter/material.dart';
import 'package:play_list/core/theme/app_colors.dart';
import 'package:play_list/models/list_model.dart';

class StackContainer extends StatelessWidget {
  const StackContainer({super.key});
  
  get index => null;

  @override
  Widget build(BuildContext context) {
    return Stack(
                children: [Container(
                  width: double.infinity,
                  height: 200,
                  child: Column(children: [
                    Row(children: [                 
                    Icon(Icons.arrow_back_ios,
                  color: AppColors.purpleColor,),               
                  Icon(Icons.favorite,
                  color: AppColors.purpleColor,),
                  ]),
                  Text(lists[index].audioname,
                style: TextStyle(color: AppColors.primaryColor,
                fontSize: 20),),
                Text(lists[index].name,
                style: TextStyle(color: AppColors.primaryColor,
                fontSize: 15)),
                  ],),
                  ),] 
              );
  }
}
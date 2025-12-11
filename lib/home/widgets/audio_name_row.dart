import 'package:flutter/material.dart';
import 'package:play_list/core/theme/app_colors.dart';
import 'package:play_list/models/list_model.dart';

class AudioNameRow extends StatelessWidget {
  const AudioNameRow({super.key,
   required this.onPressed,
    required this.icon, });

  
  final VoidCallback onPressed;
  final IconData icon;
  

  

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    int index=0;
    return Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(lists[index].audioname,
                  style: TextStyle(color: AppColors.whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
                  ),
                  Text(lists[index].name,
                  style: TextStyle(color: AppColors.whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
                  ),

                ],
              ),
              Spacer(),
              IconButton(onPressed: (){},icon: Icon(Icons.upload,
              color: AppColors.whiteColor,
              ) ),
              IconButton(onPressed: onPressed,
               icon: Icon(icon,
               color: AppColors.purpleColor,))
            ],),
          );
  }
}
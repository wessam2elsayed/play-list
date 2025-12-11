import 'package:flutter/material.dart';
import 'package:play_list/core/theme/app_colors.dart';
import 'package:play_list/models/list_model.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key, });
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
           scrollDirection: Axis.vertical,
           shrinkWrap: true,
           itemCount: lists.length,
           itemBuilder: (context, index)=>ListTile(
             leading: SizedBox(
               width: 40,
               height: 40,
               child: Image(image: AssetImage(lists[index].image)),
             ),
             title: Text(lists[index].audioname,
             style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.bold
             ),
             ),
             subtitle: Text(lists[index].name,
             style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 12,
             ),),
             trailing: IconButton(
               onPressed: (){
                 Icon(Icons.play_arrow);
               },
                icon: Icon(Icons.favorite,
                color: AppColors.purpleColor,)),
           )
           );
  }
}
import 'package:flutter/material.dart';
import 'package:play_list/core/theme/app_colors.dart';

import 'package:play_list/home/widgets/list_view_screen.dart';

import 'package:play_list/models/list_model.dart';





class ListScreen extends StatelessWidget {
  const ListScreen({super.key, });

 

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      body:CustomScrollView(
        slivers: [SliverToBoxAdapter(
          child: Stack(
                children: [SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [                 
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios,
                                        color: AppColors.purpleColor,),) ,              
                                        Icon(Icons.favorite,
                                        color: AppColors.purpleColor,),
                                        ]),
                    ),
                  Text(lists[0].audioname,
                style: TextStyle(color: AppColors.primaryColor,
                fontSize: 20),),
                Text(lists[0].name,
                style: TextStyle(color: AppColors.primaryColor,
                fontSize: 15)),
                  ],),
                  ),] 
              )
        ),
        SliverToBoxAdapter(
          child:  ListViewScreen(lists: lists,),
        )],
      )
        
              
          );  
    
  }
}
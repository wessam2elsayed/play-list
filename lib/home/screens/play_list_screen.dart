import 'package:flutter/material.dart';
import 'package:play_list/core/theme/app_colors.dart';
import 'package:play_list/home/screens/home_screen.dart';
import 'package:play_list/home/widgets/list_view_screen.dart';
import 'package:play_list/home/widgets/stack_container.dart';





class PlayListScreen extends StatefulWidget {
  const PlayListScreen({super.key});

  @override
  State<PlayListScreen> createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: CustomScrollView(slivers: [

        SliverToBoxAdapter(
          child: StackContainer(),
        ),
       
        SliverToBoxAdapter(
          child: InkWell(
            onTap: (){
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen()));              
            },
            child: ListViewScreen())
        )
       
      ],
      )
    );
    
  }
}
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:play_list/core/theme/app_colors.dart';
import 'package:play_list/home/widgets/circle.dart';

import 'package:play_list/home/widgets/audio_name_row.dart';
import 'package:play_list/home/widgets/slider_value_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isPressed = false;
    double value=0;
   bool isPlaying= false;
   final audioPlayer=AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
      leading: IconButton(onPressed: (){},
       icon: Icon(Icons.arrow_back,
       color: AppColors.whiteColor,)),
       actions: [IconButton(onPressed: (){},
        icon: Icon(Icons.menu,
        color: AppColors.whiteColor,))],
    ),
    body: Container(decoration: BoxDecoration(
      gradient: RadialGradient(colors: [
        AppColors.purpleColor,
        AppColors.blueColor,
        AppColors.primaryColor])
    ),

      child: Center(        
        child: Column(         
        children: [          
          const SizedBox(height: 150,),
          Circle(),
          
          AudioNameRow(
            onPressed: (){
              isPressed =! isPressed;
              setState(() {
                
              });
            }, 
          icon: (isPressed)?
          Icons.favorite_border:Icons.favorite          
           ),
           

          Slider(
      min: 0,
      max: 0.50,
      value: value,
       onChanged: (val){
        value=val;
        setState(() {
          
        });
        
       }),
       SliderValueRow(txt1: "00.00", txt2: "00.50"),
          InkWell(onTap: (){
            isPlaying=!isPlaying;
            setState((){});
            if(isPlaying){
              audioPlayer.play(AssetSource("assets/audio/alnas.mp3"));
            }
            else{
              audioPlayer.pause();
            }
          },
            child: CircleAvatar(radius: 20,
            backgroundColor: AppColors.purpleColor,
            child: Icon(isPlaying? Icons.pause:Icons.play_arrow,
            color: AppColors.whiteColor,),),
          )


        ],),
      ),
    ),
    );
    
    
  }
}

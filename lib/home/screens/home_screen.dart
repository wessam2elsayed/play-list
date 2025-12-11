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
   Duration duration= Duration.zero;
   Duration position=Duration.zero;
   

   @override
  void initState() {
    audioPlayer.onDurationChanged.listen((Duration dur){
       setState(() {
        duration=dur;
      });
    });
    audioPlayer.onPositionChanged.listen((Duration pos){
      setState(() {
        position=pos;
      });
    });
    super.initState();
  }

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,

      leading: IconButton(onPressed: (){
         Navigator.pop(context);
      },
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
              setState(() {
                isPressed=!isPressed;
              });
            }, 
          icon: (isPressed)?
          Icons.favorite:Icons.favorite_border,
                   
           ),
           

          Slider(
      min: 0,
      max: duration.inSeconds.toDouble(),
      value: position.inSeconds.toDouble(),
       onChanged: (val){
       audioPlayer.seek(Duration(seconds: val.toInt()));
        setState(() {
           
        });
        
       }),
       SliderValueRow(
        txt1: "${position.inMinutes}:${position.inSeconds}",
        txt2: "${duration.inMinutes}:${duration.inSeconds}"),

          InkWell(onTap: (){   
            isPlaying=!isPlaying;        
              setState((){});
            if(isPlaying){
              audioPlayer.play(AssetSource("audio/alnas.mp3"));
            }
            else{
              audioPlayer.pause();
            }
          },
            child: CircleAvatar(radius: 20,
            backgroundColor: AppColors.purpleColor,
            child: Icon(isPlaying? Icons.pause:Icons.play_arrow,
            color: AppColors.whiteColor),),
          ),


        ],),
      ),
    ),
    );
    
    
  }
   @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}

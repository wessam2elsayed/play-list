import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TryScreen extends StatefulWidget {
  const TryScreen({super.key});

  @override
  State<TryScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<TryScreen> {
   bool isPlaying= false;
   final audioPlayer=AudioPlayer();
   
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: InkWell(onTap: (){   
              isPlaying=!isPlaying;        
                setState((){});
              if(isPlaying){
                audioPlayer.play(AssetSource("alnas.mp3"));
              }
              else{
                audioPlayer.pause();
              }
            },
              child: CircleAvatar(radius: 20,
              backgroundColor: Colors.blue,
              child: Icon(isPlaying? Icons.pause:Icons.play_arrow,
              color: Colors.white),),
            ),
      ),
    );
  }
}
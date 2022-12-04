import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';




class MusicWidget extends StatelessWidget {

   void audioplayer(int musicNumber) {
    final player = AssetsAudioPlayer();
    player.play('assets/assets_music-$musicNumber.mp3');

   }

  const MusicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('نغمات'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            MaterialButton(onPressed: (){
              audioplayer(Tamer);


            }),


          ],
        ),
      ),
    );
  }
}

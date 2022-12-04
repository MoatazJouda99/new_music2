import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTileRate2 extends StatefulWidget {
  ListTileRate2({
    required this.title,
    required this.subTitle,
    required this.onTap,
    required this.image,
    Key? key,
  }) : super(key: key);

  String title;
  String subTitle;
  Function() onTap;
  String image;


  @override
  State<ListTileRate2> createState() => _ListTileRate2State();
}

class _ListTileRate2State extends State<ListTileRate2> {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();


  bool _isPlaying = false;
  bool _isPlaying2 = false;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            widget.title,
            style: GoogleFonts.actor(color: Colors.white),
          ),
          subtitle: Text(
            widget.subTitle,
            style: GoogleFonts.actor(color: Color(0XFF585A66)),
          ),
          leading: (Image.asset(widget.image)),
          trailing: Column(
            children: [
              Visibility(
                visible: !_isPlaying,
                replacement: IconButton(
                  onPressed: widget.onTap,
                  //     () {
                  //   audioPlayer.stop();
                  //   setState(() {
                  //     _isPlaying = false;
                  //   });
                  // },
                  icon: Icon(
                    Icons.pause,
                    color: Colors.lightGreenAccent,
                    size: 30,
                  ),
                ),
                child: IconButton(
                  onPressed: widget.onTap,
                    //   () {
                    // audioPlayer.open(Audio('images/Tamer.mp3'));
                    // setState(() {
                    //   _isPlaying= true;
                    //   _isPlaying2=false;
                    // });
                //  },

                  icon: Icon(
                    Icons.play_circle_outline,
                    color: Colors.lightGreenAccent,
                    //color: Color(0XFFED8770),
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 2,
          indent: 50,
          color: Colors.grey.shade800,
        ),
      ],
    );
  }
}

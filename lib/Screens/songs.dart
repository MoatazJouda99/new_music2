import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widget/list_title2.dart';

class Songs extends StatefulWidget {
  Songs({Key? key}) : super(key: key);

  @override
  State<Songs> createState() => _SongsState();
}

class _SongsState extends State<Songs> with TickerProviderStateMixin {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  bool _isPlaying = false;
  bool _isPlaying1 = false;
  bool _isPlaying2 = false;
  bool _isPlaying3 = false;


  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 138,
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Songs',
              style: GoogleFonts.actor(fontSize: 17),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
            ],
            bottom: TabBar(
              isScrollable: true,
              controller: _tabController,
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'All Songs',
                    style: TextStyle(color: Color(0XFFED8770)),
                  ),
                ),
                Text('Playlists'),
                Text('Albums'),
                Text('Artists'),
                Text('Genres'),
              ],
            ),
          ),
        ),

        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: Container(
                    height: 20,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Tamer Hosny',
                            style: GoogleFonts.actor(color: Colors.white),
                          ),
                          subtitle: Text(
                           ' 180 درجة',
                            style: GoogleFonts.actor(color: Color(0XFF585A66)),
                          ),

                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/img_4.png'),
                          ),

                          trailing: Column(
                            children: [
                              Visibility(
                                visible: !_isPlaying,
                                replacement: IconButton(
                                  onPressed:
                                      () {
                                    audioPlayer.stop();
                                    setState(() {
                                      _isPlaying = false;

                                    });
                                  },
                                  icon: Icon(
                                    Icons.pause,
                                    color: Colors.lightGreenAccent,
                                    size: 30,
                                  ),
                                ),

                                child: IconButton(
                                  onPressed:
                                    () {
                                  audioPlayer.open(Audio('images/Tamer.mp3'));
                                  setState(() {
                                    _isPlaying= true;
                                    _isPlaying1= false;
                                    _isPlaying2= false;

                                  });
                                   },

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


                        ListTile(
                          title: Text(
                            'Elissa & Saad Lamjarred',
                            style: GoogleFonts.actor(color: Colors.white),
                          ),
                          subtitle: Text(
                            ' من اول دقيقة',
                            style: GoogleFonts.actor(color: Color(0XFF585A66)),
                          ),

                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/img_5.png'),
                          ),

                          trailing: Column(
                            children: [
                              Visibility(
                                visible: !_isPlaying1,
                                replacement: IconButton(
                                  onPressed:
                                      () {
                                    audioPlayer.stop();
                                    setState(() {
                                      _isPlaying1 = false;

                                    });
                                  },
                                  icon: Icon(
                                    Icons.pause,
                                    color: Colors.lightGreenAccent,
                                    size: 30,
                                  ),
                                ),

                                child: IconButton(
                                  onPressed:
                                      () {
                                    audioPlayer.open(Audio('images/Elissa.mp3'));
                                    setState(() {
                                      _isPlaying1= true;
                                      _isPlaying= false;
                                      _isPlaying2= false;
                                    });
                                  },

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

                        ListTile(
                          title: Text(
                            'Ayman Amin',
                            style: GoogleFonts.actor(color: Colors.white),
                          ),
                          subtitle: Text(
                            ' مين قلك',
                            style: GoogleFonts.actor(color: Color(0XFF585A66)),
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/img_6.png'),
                          ),
                          trailing: Column(
                            children: [
                              Visibility(
                                visible: !_isPlaying2,
                                replacement: IconButton(
                                  onPressed:
                                      () {
                                    audioPlayer.stop();
                                    setState(() {
                                      _isPlaying2 = false;

                                    });
                                  },
                                  icon: Icon(
                                    Icons.pause,
                                    color: Colors.lightGreenAccent,
                                    size: 30,
                                  ),
                                ),

                                child: IconButton(
                                  onPressed:
                                      () {
                                    audioPlayer.open(Audio('images/Ayman.mp3'));
                                    setState(() {
                                      _isPlaying2= true;
                                      _isPlaying1= false;
                                      _isPlaying= false;
                                    });
                                  },

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

                        ListTile(
                          title: Text(
                            'Siilawy',
                            style: GoogleFonts.actor(color: Colors.white),
                          ),
                          subtitle: Text(
                            ' لما تكوني',
                            style: GoogleFonts.actor(color: Color(0XFF585A66)),
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/img_7.png'),
                          ),
                          trailing: Column(
                            children: [
                              Visibility(
                                visible: !_isPlaying3,
                                replacement: IconButton(
                                  onPressed:
                                      () {
                                    audioPlayer.stop();
                                    setState(() {
                                      _isPlaying3 = false;

                                    });
                                  },
                                  icon: Icon(
                                    Icons.pause,
                                    color: Colors.lightGreenAccent,
                                    size: 30,
                                  ),
                                ),

                                child: IconButton(
                                  onPressed:
                                      () {
                                    audioPlayer.open(Audio('images/Siilawy.mp3'));
                                    setState(() {
                                      _isPlaying3= true;
                                      _isPlaying= false;
                                      _isPlaying1= false;
                                      _isPlaying2= false;

                                    });
                                  },

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

                    ),
                    ),
              ),
              Container(height: 20, child: Text('Playlists')),
              Container(height: 20, child: Text('Albums')),
              Container(height: 20, child: Text('Artists')),
              Container(height: 20, child: Text('Genres')),
            ],
          ),
        ),

        // ListTileRate2(
        //   title: 'Countryman',
        //   subTitle: 'Daughtry',
        //   image: 'images/NPath.png',
        //   onTap: () {
        //     audioPlayer.open(Audio('images/Tamer.mp3'));
        //   },
        // ),
        // ListTileRate2(
        //   title: 'Be the girl',
        //   subTitle: 'Bebe Rexa',
        //   image: 'images/oath.png',
        //   onTap: () {
        //     audioPlayer.open(Audio('images/Tamer.mp3'));
        //   },
        // ),
        // ListTileRate2(
        //   title: 'Do you feel lonelyness',
        //   subTitle: 'Marc Anthony',
        //   image: 'images/Path.png',
        //   onTap: () {
        //     audioPlayer.open(Audio('images/Tamer.mp3'));
        //   },
        // ),
        // ListTileRate2(
        //   title: 'Earth song',
        //   subTitle: 'Michael Jackson',
        //   image: 'images/img_4.png',
        //   onTap: () {
        //     audioPlayer.open(Audio('images/Tamer.mp3'));
        //   },
        // ),

        // ListTileRate2(
        //   title: 'Be the girl',
        //   subTitle: 'Bebe Rexa',
        //   image: 'images/img_6.png',
        //   onTap: () {
        //     audioPlayer.open(Audio('images/Tamer.mp3'));
        //   },
        // ),

        // ListTileRate2(
        //   title: 'Be the girl',
        //   subTitle: 'Bebe Rexa',
        //   image: 'images/img_5.png',
        //   onTap: () {
        //     audioPlayer.open(Audio('images/Tamer.mp3'));
        //   },
        // ),
      ],
    );
  }
}

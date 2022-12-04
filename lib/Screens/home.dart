import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widget/list_title_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _list = ['images/austin.png', 'images/img.png'];

  List<String> _list2 = [
    'images/img_1.png',
    'images/img_2.png',
    'images/img_3.png'
  ];

  List<String> _title = ['Sound of Sky', 'Girl on Fire'];

  List<String> _title1 = ['Classic Playlist', 'Summer Playlist', 'Pop Music'];

  List<String> _subtitle = ['Dilon Bruce', 'Alecia Keys'];

  List<String> _subtitle1 = ['Piano Guys', 'Dilon Bruce', 'Michael Jackson'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            width: 281,
            height: 37,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Color(0XFF707070),),
                  hintText: 'Search album song ',

                  hintStyle: TextStyle(
                    color: Color(0XFF707070),
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(
                        color: Colors.grey.shade700
                    ),
                  )

              ),
            ),
          ),
        ),


        Expanded(
          child: ListView(
            padding: EdgeInsets.only(
              top: 36,
              right: 20,
              left: 20,
            ),
            children: [
              Text(
                'Hot Racommeded',
                style: GoogleFonts.actor(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 19,
              ),
              SizedBox(
                height: 200,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.only(end: 19),
                            child: Image.asset(
                              _list.elementAt(index),
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          ListTile(
                            title: Text(
                              _title.elementAt(index),
                              style: GoogleFonts.gemunuLibre(color: Colors.white),
                            ),
                            subtitle: Text(
                              _subtitle.elementAt(index),
                              style: GoogleFonts.actor(color: Color(0XFF585A66)),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 27.5,
              ),
              Divider(
                color: Colors.grey.shade500,
              ),
              SizedBox(
                height: 24.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Playlist',
                    style: GoogleFonts.actor(color: Colors.white),
                  ),
                  Text(
                    'view All',
                    style: GoogleFonts.actor(color: Color(0XFFED8770)),
                  )
                ],
              ),
              SizedBox(
                height: 23,
              ),
              SizedBox(
                height: 200,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            _list2.elementAt(index),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          ListTile(
                            title: Text(
                              _title1.elementAt(index),
                              style: GoogleFonts.gemunuLibre(color: Colors.white),
                            ),
                            subtitle: Text(
                              _subtitle1.elementAt(index),
                              style: GoogleFonts.actor(color: Color(0XFF585A66)),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 27.5,
              ),
              Divider(
                color: Colors.grey.shade500,
              ),
              SizedBox(
                height: 24.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recently Played',
                    style: GoogleFonts.actor(color: Colors.white),
                  ),
                  Text(
                    'view All',
                    style: GoogleFonts.actor(color: Color(0XFFED8770)),
                  )
                ],
              ),

              ListTileRate(
                title: 'Billie Jean',
                subTitle: 'Michael Jackson',
                onTap: () {},
              ),

              ListTileRate(
                title: 'Earth Song',
                subTitle: 'Michael Jackson',
                onTap: () {},
              ),

              ListTileRate(
                title: 'Mirror',
                subTitle: 'Justin Timberlake',
                onTap: () {},
              ),

              ListTileRate(
                title: 'Remember the Time',
                subTitle: 'Michael Jackson',
                onTap: () {},
              ),


            ],
          ),
        ),
      ],
    );
  }
}

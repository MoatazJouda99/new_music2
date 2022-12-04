import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_music2/Screens/home.dart';
import 'package:new_music2/Screens/settings.dart';
import 'package:new_music2/Screens/songs.dart';
import '../Widget/list_tile.dart';


class Homescreens extends StatefulWidget {
   Homescreens({Key? key}) : super(key: key);

  @override
  State<Homescreens> createState() => _HomescreensState();
}

class _HomescreensState extends State<Homescreens> {

  int _currentIndex = 0 ;
  List<Widget> _list =[

    Home(),
    Songs(),
    Settings(),

  ];

   // List <Widget> _list2= [

    // Container(
    //   width: 281,
    //   height: 37,
    //   child: TextField(
    //     decoration: InputDecoration(
    //         prefixIcon: Icon(Icons.search, color: Color(0XFF707070),),
    //         hintText: 'Search album song ',
    //
    //         hintStyle: TextStyle(
    //           color: Color(0XFF707070),
    //           fontSize: 13,
    //           fontWeight: FontWeight.normal,
    //         ),
    //
    //         border: OutlineInputBorder(
    //           borderRadius: BorderRadius.circular(25),
    //           borderSide: BorderSide(
    //               color: Colors.grey.shade700
    //           ),
    //         )
    //
    //     ),
    //   ),
    // ),

    // Text('Songs'),
    // Text('Settings')

  // ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF272B36),

      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   title: _list2.elementAt(_currentIndex),
      //   centerTitle: true,
      // ),

       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _currentIndex,
         onTap: (value) {
           setState(() {
             _currentIndex = value;

           });

         },

         backgroundColor: Color(0XFF151827),
         fixedColor: Color(0XFFED8770),
         unselectedItemColor: Color(0XFF63666E),

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label:'Songs'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label:'Settings'),

        ],
      ),

      drawer: Drawer(
        backgroundColor: Color(0XFF272B36),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Image.asset('images/Logo.png'),
              SizedBox(
                height: 5.3,
              ),
              Text(
                'Music',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '328',
                    style: GoogleFonts.gemunuLibre(color: Colors.white),
                  ),
                  Text(
                    '52',
                    style: GoogleFonts.gemunuLibre(color: Colors.white),
                  ),
                  Text(
                    '87',
                    style: GoogleFonts.gemunuLibre(color: Colors.white),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Songs',
                    style: GoogleFonts.gemunuLibre(color: Colors.white),
                  ),
                  Text(
                    'Albums',
                    style: GoogleFonts.gemunuLibre(color: Colors.white),
                  ),
                  Text(
                    'Artists',
                    style: GoogleFonts.gemunuLibre(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 49,
              ),

              ListTileDrawer(
                title: 'Themes',
                image: 'images/paint.png',
                onTap: (){},
              ),

              ListTileDrawer(
                title: 'Ringtone Cutter',
                image: 'images/scissors.png',
                onTap: (){},
              ),

              ListTileDrawer(
                title: 'Sleep timer',
                image: 'images/stopwatch.png',
                onTap: (){},
              ),

              ListTileDrawer(
                title: 'Equliser',
                image: 'images/sound-bars.png',
                onTap: (){},
              ),

            ],
          ),
        ),
      ),

      body: _list.elementAt(_currentIndex),
    );
  }
}

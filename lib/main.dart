import 'package:flutter/material.dart';
import 'package:new_music2/Screens/home_screens.dart';
import 'Screens/launch_screens.dart';
import 'Screens/naghamat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        '/launch_screens': (context) =>  launch_screens(),
        '/Home_screens':(context)=> Homescreens(),
        '/naghamat':(context) => MusicWidget(),
      },

      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screens',

    );
  }
}

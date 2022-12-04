import 'package:flutter/material.dart';

class launch_screens extends StatefulWidget {
  const launch_screens({Key? key}) : super(key: key);

  @override
  State<launch_screens> createState() => _launch_screensState();
}

class _launch_screensState extends State<launch_screens> {
  @override

  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/naghamat');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'images/Spalsh.png',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage('asset/HD-wallpaper-avengers-endgame-end-war.jpg'),
            fit: BoxFit.cover)
          ),


        )
        ,
      ),
    );
  }
}

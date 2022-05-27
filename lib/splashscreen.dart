import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreen createState() => _SplashScreen();

}

class _SplashScreen extends State<SplashScreen>{

  @override
  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    });
  }

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Image.asset(
              'images/icon.png',
              width: 175.0,
              height: 175.0,
              fit: BoxFit.cover
            ), 

            const SizedBox(height: 24.0,),

            const Text(
              "CheckBarang",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
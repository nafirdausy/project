import 'package:flutter/material.dart';
import 'dart:async';
import 'package:project/main.dart';


class SplashScreen extends StatefulWidget{

  _SplashScreen createState() => _SplashScreen();

}

class _SplashScreen extends State<SplashScreen>{

  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),

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
            
            Image.asset('images/icon.png',
                width: 175.0,
                height: 175.0,
                fit: BoxFit.cover
            ), 

            SizedBox(height: 24.0,),

            Text("CheckBarang",
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
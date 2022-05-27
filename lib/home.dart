import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(""),
      ),
      body: const Center(
        child: Text(
          "CheckBarang",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        )
      )
    );
  }
}

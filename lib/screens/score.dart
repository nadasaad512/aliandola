
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Score extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset("animation/72582-congratulations.json"),

          Text("your Score is 9/10",style: TextStyle(
            fontSize: 25,
            color: Colors.red,
            fontWeight: FontWeight.bold
          ),),

        ],
      ),
    );
  }

}
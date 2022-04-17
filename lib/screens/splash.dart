import 'package:flutter/material.dart';



class launch_screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       body: Container(

         child: Center(
           child: Column(
             children: [
               Expanded
                 (
                   child: Image.asset("assets/6.png")
               ),



             ],
           ),
         ),
       ),
    );
  }

}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../utils/helpers.dart';



class SelectType extends StatefulWidget{

  @override
  State<SelectType> createState() => _SelectTypeState();
}

class _SelectTypeState extends State<SelectType> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100.h,),
            Text("من انت ؟",style: TextStyle(
              fontSize: 25,

            ),),
            SizedBox(height: 30.h,),
           select( image: "",router:'/RequiredData' ,lottie: "animation/56546-person-with-the-tablet (1).json"),
            SizedBox(height: 20.h,),
            Text("معلم ",style: TextStyle(
              fontSize: 20,

            ),),
            SizedBox(height: 50.h,),
             select( image: "",router: '/RequiredData',lottie: "animation/81124-student.json"),
            SizedBox(height: 20.h,),
            Text("طالب ",style: TextStyle(
              fontSize: 20,

            ),),




          ],
        ),
      ),
    );
  }

Widget select({ required String image,required String router ,required String lottie  }){
    return  InkWell(

      onTap:()
      {

      Navigator.pushReplacementNamed(context, router);

        },
      child: Container(
        height: 200.h,
        width: 300.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(image)
            )
        ),
        child:  Center(
            child: LottieBuilder.asset(lottie)),

      ),
    );
}
}







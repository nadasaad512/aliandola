import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassSchool extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text("الصفوف ",style: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold
      ),),
    ),
    body:Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
      child: ListView.builder(
        itemCount:4,

      itemBuilder: (
       BuildContext, int){
        return Column(
          children: [
            SizedBox(height: 5.h,),
            Container(
              height: 150.h,
              width: 400.w,
              decoration: BoxDecoration(
                  color: Colors.pink,

                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("الصف الاول ",style: TextStyle(
                   fontSize: 30
                  ),),
                  Text("الفصل الاول ",style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),),
                  Text("الفصل الثاني ",style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                  ),),

                ],
              ),
            ),
            SizedBox(height: 20,)
          ],
        );
      }



      ),
    ),
  );
  }


}
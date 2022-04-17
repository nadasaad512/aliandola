import 'package:aliandola/screens/score.dart';
import 'package:aliandola/screens/selecttype.dart';
import 'package:aliandola/screens/splash.dart';
import 'package:aliandola/screens/student/requireddata.dart';
import 'package:aliandola/screens/teacherpages/class.dart';
import 'package:aliandola/screens/teacherpages/logain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(411, 820),
      minTextAdapt: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
          builder: (context, widget) {
            ScreenUtil.setContext(context);
            return MediaQuery(
              //Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
        initialRoute: '/ClassSchool',

          routes: {
            '/launch_screen': (context) => launch_screen(),
            '/SelectType': (context) => SelectType(),
            '/RequiredData': (context) => RequiredData(),
            '/LogainScreen': (context) => LogainScreen(),
            '/Score': (context) => Score(),
            '/ClassSchool': (context) => ClassSchool(),
          }


      ),
    );
  }
}



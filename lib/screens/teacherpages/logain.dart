
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/helpers.dart';

class LogainScreen extends StatefulWidget{
  @override
  State<LogainScreen> createState() => _LogainScreenState();
}

class _LogainScreenState extends State<LogainScreen>with Helpers {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Center(
          child: Column(
            children: [
              SizedBox(height: 130.h,),
              Text("data"),
              SizedBox(height: 50.h,),
              Field(
                  controller: _emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  title: 'أدخل الايميل ',
                  prefixIcon: Icon(Icons.email)

              ),
              SizedBox(height: 50.h,),
              Field(
                  controller: _passwordTextController,
                  keyboardType: TextInputType.text,
                  title: 'كلمة المرور ',
                  prefixIcon: Icon(Icons.lock)

              ),

              SizedBox(height: 50.h),
              ElevatedButton(
                onPressed: () {
                  if(_emailTextController.text=="aliolaaliola23@gmail.com"&&_passwordTextController.text=="Ali&&Ola123")
                  {
                    print("nada");
                  }else{
                    showSnackBar(context,message: "كلمة المرور او الايميل غير صحيح ",error: true);
                  }
                },
                child: Text('LOGIN'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(200, 50),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

}
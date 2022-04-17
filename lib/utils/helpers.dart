import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin Helpers {

  void showSnackBar(BuildContext context, {required String message, bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        backgroundColor: error ? Colors.red : Colors.green  ,
      ),
    );
  }
  Widget Button({required  String title}){
    return  ElevatedButton(
      onPressed:(){},
      child: Text(title),
      style: ElevatedButton.styleFrom(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(200, 50),
      ),
    );
  }


  Widget Field({required TextEditingController? controller,required String title, required TextInputType? keyboardType,required Widget? prefixIcon}){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: title,
          suffixIcon: prefixIcon,
          hintTextDirection: TextDirection.rtl,
          enabledBorder: OutlineInputBorder(

              borderSide: BorderSide(
                  color: Colors.grey
              ),
              borderRadius: BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.blue
              ),
              borderRadius: BorderRadius.circular(10)
          ),

        ),
      ),
    );
  }
}

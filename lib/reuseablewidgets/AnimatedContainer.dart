import 'dart:ffi';

import 'package:commodity/utilitis/colors.dart';
import 'package:flutter/material.dart';

class CustomAnimated extends StatefulWidget {
  const CustomAnimated({super.key});

  @override
  State<CustomAnimated> createState() => _AnimatedState();
}

class _AnimatedState extends State<CustomAnimated> {

  var isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          isEnabled = !isEnabled;
        });
      },
      child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve : Curves.decelerate,
        width: 46,
        height: 28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isEnabled ? Color(0xffF5F5F5) : Color(0xff000000),
        ),
        child: AnimatedAlign(
          duration: Duration(milliseconds: 300),
          alignment: isEnabled ? Alignment.centerLeft : Alignment.centerRight,
          curve: Curves.decelerate,
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Container(
              width: 20,
              height: 27,
              decoration: BoxDecoration(
                gradient: AppTheme.gradient ,
                borderRadius: BorderRadius.circular(100.0)
              ),
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:commodity/utilitis/colors.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';

class Customcheckbox extends StatefulWidget {
  const Customcheckbox({super.key});


  @override
  State<Customcheckbox> createState() => _CustomcheckboxState();
}

class _CustomcheckboxState extends State<Customcheckbox> {

  bool? check = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenWidth(context)*0.9,
      child: CheckboxListTile(
        checkColor: AppTheme.lightblack,
          value: check,
          onChanged: (bool ? value){
            setState(() {
               check = value;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        activeColor: AppTheme.white,
      ),
    );
  }
}

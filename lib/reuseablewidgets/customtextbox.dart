import 'package:flutter/material.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({super.key, this.ontap, required this.text, required this.account});
final VoidCallback? ontap;
final String text;
final String account;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenWidth(context)*0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(account,style: T2textStyle,),
          InkWell(
              onTap: ontap,
              child: Text(text,style: T3textStyle,))
        ],
      ),
    );
  }
}

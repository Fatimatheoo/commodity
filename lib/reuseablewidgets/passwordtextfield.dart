import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import '../utilitis/icons.dart';
import '../utilitis/textstyles.dart';

class PasswordTextfield extends StatelessWidget {
  const PasswordTextfield({super.key,
    required this.text, required this.textEditingController, this.ontap, this.onchanged, required this.suffixIcon, required this.obscuretext});

  final String text;
  final TextEditingController textEditingController;
  final VoidCallback? ontap;
  final dynamic onchanged;
  final IconButton suffixIcon;
  final bool obscuretext;

  @override
  Widget build(BuildContext context) {
    bool passwordVisible = false;
    return Container(
      height: 40,
      width: ScreenWidth(context)*0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: AppTheme.rgb,
              width: 2
          )
      ),
      child: TextField(
        controller: textEditingController,
        obscureText: obscuretext,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Image.asset(AppIcons.key),
            suffixIcon: suffixIcon,
            hintText: text,
            hintStyle: T4textStyle),
        style: T4textStyle,
        onTap: ontap,
        onChanged: onchanged,
      ),
    );
  }
}
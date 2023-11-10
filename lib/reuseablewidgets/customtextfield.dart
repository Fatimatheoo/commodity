import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,
    required this.text,required this.textEditingController, required this.prefixIcon, this.ontap, this.onchanged,
  });

  final String text;
  final TextEditingController textEditingController;
  final Image prefixIcon;
  final VoidCallback? ontap;
  final dynamic onchanged;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenWidth(context)*0.8,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: AppTheme.rgb,
                width: 2
            )
        ),
        child: TextField(
          controller: textEditingController,
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: prefixIcon,
              hintText: text,
              hintStyle: T4textStyle),
          style: T4textStyle,
          onTap: ontap,
          onChanged: onchanged,
        )
    );
  }
}
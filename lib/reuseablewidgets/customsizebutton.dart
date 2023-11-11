import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';
import '../utilitis/sizes.dart';

class CustomSizeButton extends StatelessWidget {
  const CustomSizeButton({super.key, this.onTap,
    required this.text});
  final VoidCallback? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: ScreenWidth(context)*0.6,
        height: 40,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [
                Color(0xff0ACCCA),
                Color(0xff0080FF),
              ]
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                text,
                style: T9textStyle)
          ],
        ),
      ),
    );
  }
}
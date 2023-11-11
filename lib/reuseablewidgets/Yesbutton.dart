import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';

class YesButton extends StatelessWidget {
  const YesButton({super.key, this.onTap,
    required this.text});
  final VoidCallback? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 30,
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
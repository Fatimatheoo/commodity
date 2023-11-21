import 'package:commodity/utilitis/colors.dart';
import 'package:commodity/utilitis/decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({super.key, this.ontap, required this.selected, required this.text});

  final VoidCallback? ontap;
  final bool selected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            constraints: BoxConstraints(maxWidth: 84,minWidth: 54),
            height: 30,
            decoration: selected? nongradient : border,
            child: Center(
              child: Text(text,
                style: TextStyle(fontFamily: 'Font1',
                fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: selected ? AppTheme.white : AppTheme.Primarycolor
                )
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}

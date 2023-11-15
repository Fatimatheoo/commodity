import 'package:commodity/utilitis/colors.dart';
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
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: 84,
            height: 30,
            decoration: BoxDecoration(
             color : selected ? AppTheme.secondarycolor : AppTheme.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: selected ? AppTheme.white : AppTheme.secondarycolor
              )
            ),
            child: Center(
              child: Text(text,
                style: TextStyle(fontFamily: 'Font1',
                fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: selected ? AppTheme.white : AppTheme.secondarycolor
                )
              ),
            ),
          ),
          )
        ],
      ),
    );
  }
}

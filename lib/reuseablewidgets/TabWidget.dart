import 'package:commodity/utilitis/colors.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class TabWidgetC extends StatelessWidget {
  TabWidgetC({
    this.title,
    super.key,
  });
  String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: GradientBoxBorder(
            gradient: AppTheme.gradient
          )),
      height: 30,
      child: Center(
        child: Text(
          title.toString(),
        ),
      ),
    );
  }
}

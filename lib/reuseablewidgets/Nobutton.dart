import 'package:commodity/reuseablewidgets/gradienttext.dart';
import 'package:commodity/utilitis/colors.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../utilitis/sizes.dart';

class NoButton extends StatelessWidget {
  const NoButton({super.key, this.onTap,});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 30,
        decoration: BoxDecoration(
          color: AppTheme.white,
          border: const GradientBoxBorder(
              gradient: AppTheme.gradient
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            GradientText('No', gradient: AppTheme.gradient,style: T16textStyle,)
          ],
        ),
      ),
    );
  }
}
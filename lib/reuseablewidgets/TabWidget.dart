
import 'package:flutter/material.dart';
import '../utilitis/colors.dart';

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
          border: Border.all(color: AppTheme.Primarycolor)),
      height: 30,
      child: Center(
        child: Text(
          title.toString(),
        ),
      ),
    );
  }
}


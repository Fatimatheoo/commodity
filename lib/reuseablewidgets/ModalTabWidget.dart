import 'package:flutter/material.dart';
import '../utilitis/colors.dart';

class ModalTabWidget extends StatelessWidget {
  ModalTabWidget({
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
          borderRadius: BorderRadius.circular(5)),
      height: 30,
      child: Center(
        child: Text(
          title.toString(),
        ),
      ),
    );
  }
}
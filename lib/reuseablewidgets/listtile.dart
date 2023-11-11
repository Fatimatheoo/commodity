import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';

class Customlisttile extends StatelessWidget {
  final String text;
  final String icon;
  final String image;

  const Customlisttile(
      {super.key, required this.text, required this.image, required this.icon,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image),
      title: Text(text, style: T12textStyle,),
      trailing: Image.asset(icon)
    );
  }
}
import 'package:commodity/screens/Profile/personalinfoscreen.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';

class Customlisttile extends StatelessWidget {
  final String text;
  final String icon;
  final String image;
  final VoidCallback? ontap;

  const Customlisttile(
      {super.key, required this.text, required this.image, required this.icon, this.ontap,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(image),
      title: Text(text, style: T12textStyle,),
      trailing: InkWell(
          onTap: (){},
          child: Image.asset(icon))
    );
  }
}
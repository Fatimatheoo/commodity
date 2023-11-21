import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utilitis/colors.dart';
import '../utilitis/gaps.dart';
import '../utilitis/icons.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key, this.ontap});

  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: ScreenWidth(context),
        height: 40,
        color: AppTheme.gray,
        child: Row(
          children: [
            HorizontalGap(20),
            Image.asset(AppIcons.arrow),
            HorizontalGap(15),
            Text('Lorem ipsum dolor',style: T12textStyle,)
          ],
        ),
      ),
    );
  }
}

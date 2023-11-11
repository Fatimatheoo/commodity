import 'package:flutter/cupertino.dart';

import '../utilitis/colors.dart';
import '../utilitis/gaps.dart';
import '../utilitis/icons.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';

class Customcheckbox extends StatelessWidget {
  const Customcheckbox({super.key, this.value, this.onchanged});

  final value;
  final dynamic onchanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenWidth(context)*0.2,
      child: CheckboxListTile(
      // checkColor: AppTheme.lightblack,
          value: value,
          onChanged: onchanged,
          controlAffinity: ListTileControlAffinity.leading,
       // activeColor: AppTheme.white,
      ),
    );
  }
}

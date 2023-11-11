import 'package:flutter/material.dart';

import '../utilitis/colors.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';
import 'CustomDialogbox.dart';

class CancelContainer extends StatelessWidget {
  const CancelContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: ScreenWidth(context)*0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppTheme.white,
          border: Border.all(
              color: AppTheme.red,
              width: 1
          )
      ),
      child: Center(child: InkWell(
          onTap: (){
            showAlertDialog(context);
          },
          child: Text('Cancel Subscription',style: T23textStyle))),
    );
  }
}

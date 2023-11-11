import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import '../utilitis/gaps.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenWidth(context)*0.9,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppTheme.gray
      ),
      child: Row(
        children: [
          Container(
          width: 50,height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: AppTheme.gradient
        ),
        child: Center(child: Text('H',style: T19textStyle,)),
          ),
          HorizontalGap(15),
          Text('Hafiz Ahmad',style: T13textStyle,)
        ],
      ),
    );
  }
}

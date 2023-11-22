import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../utilitis/colors.dart';
import '../utilitis/gaps.dart';
import '../utilitis/images.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';
import 'gradienttext.dart';

class BottomModalheet extends StatelessWidget {
  const BottomModalheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenWidth(context),
      height: ScreenHeight(context)*0.6,
      decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          border: GradientBoxBorder(
              gradient: AppTheme.gradient
          )
      ),
      child: Column(
        children: [
          Container(
            width: 88,
            height: 4,
            decoration: BoxDecoration(
                gradient: AppTheme.gradient
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset(AppImages.close)),
            ],
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.lightblack
            ),
            child: Image.asset(AppImages.apple),
          ),
          GradientText('APPLE INC.', gradient: AppTheme.gradient, style: T33textStyle),
          Text('APPL NASDQ',style: T34textStyle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('173.00',style: T35textStyle ,),
              Text(' USD',style: T5textStyle,)
            ],
          ),
          Text('+0.12  +0.07% today',style: T36textStyle,),
          Text('+43.38  +33.47% year to date',style: T36textStyle,),
          VerticalGap(ScreenHeight(context)*0.1),
          Divider(
            thickness: 1,
            color: AppTheme.Rgb,
          )
        ],
      ),
    );
  }
}
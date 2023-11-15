import 'package:commodity/utilitis/gaps.dart';
import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import '../utilitis/images.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';

class SubscriptionContainer extends StatelessWidget {
  const SubscriptionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: ScreenWidth(context)*0.9,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: AppTheme.gradient
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 60,height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppTheme.white
                  ),
                  child: Image.asset(AppImages.crown)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Commodity Alert Pro',style: T9textStyle,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Subscription (1 Month)',style: T20textStyle,),
                    HorizontalGap(ScreenWidth(context)*0.1),
                    Text('\$ 7',style: T22textStyle,)
                  ],
                ),
                Row(
                  children: [
                    Text('Renews Nov 26, 2023',style: T21textStyle,),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:commodity/reuseablewidgets/CustomRow.dart';
import 'package:commodity/reuseablewidgets/custombutton.dart';
import 'package:commodity/reuseablewidgets/gradienttext.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import '../../utilitis/colors.dart';
import '../../utilitis/icons.dart';
import '../../utilitis/images.dart';
import '../../utilitis/textstyles.dart';
import '../Subscription/Subscription.dart';
import '../about/AboutScreen.dart';

class SubcriptionBenefits extends StatelessWidget {
  const SubcriptionBenefits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        leading : InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> SubcriptionScreen())
              );
            },
            child: Image.asset(AppIcons.icon)),
        title: Text('Subscription Benefits',style : T11textStyle),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 200,
              height: 115,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.benefits),
                    fit: BoxFit.fill
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                ),
                gradient: AppTheme.gradient,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Monthly',
                    style: T14textStyle,),
                  Text(
                    '\$7',
                    style: T15textStyle,)
                ],
              ),
            ),
          ),
          VerticalGap(ScreenHeight(context)*0.05),
          Container(
            child: Column(
              children: [
                GradientText(
                  'Subscription',
                  gradient: AppTheme.gradient,
                  style: T17textStyle,),
                GradientText(
                  'Benefits',
                  gradient: AppTheme.gradient,
                  style: T17textStyle,)
              ],
            ),
          ),
          VerticalGap(ScreenHeight(context)*0.04),
           CustomRow(
            ontap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> AboutScreen()
              )
              );
            },
          ),
          VerticalGap(10),
          const CustomRow(),
          VerticalGap(10),
          const CustomRow(),
          VerticalGap(10),
          const CustomRow(),
          VerticalGap(10),
          const CustomRow(),
          VerticalGap(20),
          const CustomButton(
              text: 'Buy Now ')
        ],
      ),
    );
  }
}

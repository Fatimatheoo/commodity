import 'package:commodity/reuseablewidgets/custombuttoncontainer.dart';
import 'package:commodity/reuseablewidgets/customscreennavigator.dart';
import 'package:commodity/reuseablewidgets/customsizebutton.dart';
import 'package:commodity/reuseablewidgets/gradienttext.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/images.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import '../../utilitis/colors.dart';
import '../../utilitis/icons.dart';
import '../../utilitis/textstyles.dart';
import '../subscription_benefits/SubcriptionBenefits.dart';

class SubcriptionScreen extends StatelessWidget {
  const SubcriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        leading : InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> ScreenNavigator()));
            },
            child: Image.asset(AppIcons.icon)),
        title: Text(
            'Subscription',
            style : T11textStyle),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: ScreenWidth(context)*0.8,
              height: 460,
              decoration: BoxDecoration(
                color: AppTheme.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: AppTheme.secondarycolor,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: AppTheme.rGB,
                    blurRadius: 5
                  )
                ]
              ),
              child: Column(
                children: [
                  Image.asset(AppImages.box),
                  GradientText(
                      'Upgrade',
                      gradient: AppTheme.gradient,
                    style: T17textStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text('Lorem    ipsum     dolor     sit    amet, consectetur adipiscing elit.Vivamus vitae metus purus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Etiam gravida felis eu fringilla facilisis.',
                    style: T5textStyle,
                    ),
                  ),
                  const CustomSizeButton(text: '7 Days Free'),
                  VerticalGap(10),
                  CustomButtonContainer(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> SubcriptionBenefits()));
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
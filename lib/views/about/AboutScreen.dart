import 'package:commodity/reuseablewidgets/gradienttext.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/icons.dart';
import 'package:flutter/material.dart';
import '../../utilitis/colors.dart';
import '../../utilitis/textstyles.dart';
import '../subscription_benefits/SubcriptionBenefits.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        leading : InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> SubcriptionBenefits()));
            },
            child: Image.asset(AppIcons.icon)),
        title: Text('About',style : T11textStyle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                GradientText(
                    'About Commodity Alert Pro',
                    style: T18textStyle,
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff0080FF),
                        Color(0xff0ACCCA),
                      ]
                    )),
              ],
            ),
            VerticalGap(10),
            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                'standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              style: T10textStyle,
            ),
            VerticalGap(15),
            Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            style: T10textStyle,
            )
          ],
        ),
      ));
  }
}
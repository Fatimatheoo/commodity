import 'package:commodity/reuseablewidgets/customtext.dart';
import 'package:commodity/reuseablewidgets/gradienttext.dart';
import 'package:commodity/reuseablewidgets/CustomNavIcons.dart';
import 'package:commodity/screens/AlertScreen.dart';
import 'package:commodity/screens/HomeScreen.dart';
import 'package:commodity/screens/Profile/Profile.dart';
import 'package:commodity/utilitis/colors.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenNavigator extends StatefulWidget {
   ScreenNavigator({super.key});

  @override
  State<ScreenNavigator> createState() => _ScreenNavigatorState();
}

class _ScreenNavigatorState extends State<ScreenNavigator> {
int pageindex= 0;

  final pages = [
    HomeScreen(),
    AlertScreen(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageindex],
      bottomNavigationBar: Container(
        color: AppTheme.white,
        height: 53,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             Column(
               children: [
                 IconButton(onPressed: (){
                   setState(() {
                     pageindex = 0;
                   });
                 }, icon: pageindex == 0 ? HomeIcon : Home ),
                 Expanded(
                   child: pageindex == 0 ? GradientText('Home', gradient: AppTheme.gradient, style: T27textStyle) : CustomText(text: 'Home'),
                 )
               ]
             ),
            Column(
              children: [
                IconButton(
                    onPressed: (){
                      setState(() {
                        pageindex = 1;
                      });
                    },
                    icon :pageindex == 1 ? AlertIcon : Alert) ,
                Expanded(child: pageindex == 1 ? GradientText('Alert', gradient: AppTheme.gradient, style: T27textStyle) : CustomText(text: 'Alert'))
              ],
            ),
            Column(
              children: [
                IconButton(onPressed: (){
                  setState(() {
                    pageindex = 2;
                  });
                }, icon: pageindex == 2? ProfileIcon : profile),
                Expanded(child: pageindex == 2 ? GradientText('Profile', gradient: AppTheme.gradient, style: T27textStyle) : CustomText(text: 'Profile'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
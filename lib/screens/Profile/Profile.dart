import 'package:commodity/reuseablewidgets/cancelcontainer.dart';
import 'package:commodity/reuseablewidgets/lettercontainer.dart';
import 'package:commodity/reuseablewidgets/subscriptionContainer.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/reuseablewidgets/listtile.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';

import '../../data/CustomListModel.dart';
import '../../utilitis/colors.dart';
import '../../utilitis/textstyles.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:1,
        bottomOpacity: 0.6,
        backgroundColor: AppTheme.white,
        title: Text('Profile',style : T11textStyle),
        centerTitle: true,
      ),
     body: Center(
       child: SingleChildScrollView(
         child: Column(
           children: [
             VerticalGap(ScreenHeight(context)*0.04),
             const ProfileContainer(),
             VerticalGap(ScreenHeight(context)*0.02),
             const SubscriptionContainer(),
             VerticalGap(ScreenHeight(context)*0.03),
             const CancelContainer(),
             VerticalGap(ScreenHeight(context)*0.02),
             SizedBox(
               height: ScreenHeight(context)*0.5,
               width: ScreenWidth(context)*0.9,
               child: ListView(
                 scrollDirection: Axis.vertical,
                 children: List.generate(customlist.length, (index) => Customlisttile(
                     text: customlist[index].text,
                     icon : customlist[index].icon,
                     image: customlist[index].image,)
                 ),
               ),
             ),
           ],
         ),
       ),
     ),
    );
  }
}


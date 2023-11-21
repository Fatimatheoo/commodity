import 'package:commodity/reuseablewidgets/CustomList.dart';
import 'package:commodity/reuseablewidgets/cancelcontainer.dart';
import 'package:commodity/reuseablewidgets/lettercontainer.dart';
import 'package:commodity/reuseablewidgets/subscriptionContainer.dart';
import 'package:commodity/screens/Profile/personalinfoscreen.dart';
import 'package:commodity/screens/Subscription/Subscription.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import '../../utilitis/colors.dart';
import '../../utilitis/textstyles.dart';

class Profile extends StatelessWidget {
   Profile({super.key});

  List pages= [
    PersonalInformation(),
    SubcriptionScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppTheme.white,
        title: Text('Profile',style : T11textStyle),
        centerTitle: true,
      ),
     body: Center(
       child: SingleChildScrollView(
         child: Column(
           children: [
             VerticalGap(ScreenHeight(context)*0.04),
             ProfileContainer(),
             VerticalGap(ScreenHeight(context)*0.02),
             SubscriptionContainer(),
             VerticalGap(ScreenHeight(context)*0.03),
             CancelContainer(),
             VerticalGap(ScreenHeight(context)*0.02),
             CustomList(),
             // SizedBox(
             //   height: ScreenHeight(context)*0.5,
             //   width: ScreenWidth(context)*0.9,
             //   child: ListView(
             //     scrollDirection: Axis.vertical,
             //     children: List.generate(customlist.length, (index) => Customlisttile(
             //         text: customlist[index].text,
             //         icon : customlist[index].icon,
             //         image: customlist[index].image,
             //       ontap: (){
             //           pages;
             //       }
             //       )
             //     ),
             //   ),
             // ),
           ],
         ),
       ),
     ),
    );
  }
}
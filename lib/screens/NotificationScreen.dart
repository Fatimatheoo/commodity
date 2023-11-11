import 'package:commodity/screens/NavigationScreen.dart';
import 'package:flutter/material.dart';

import '../utilitis/colors.dart';
import '../utilitis/icons.dart';
import '../utilitis/images.dart';
import '../utilitis/textstyles.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomNavigationBar()));
            },
            child: Image.asset(AppIcons.icon)),
        title: Text('Notifications',style : T11textStyle),
        actions: [
          Image.asset(AppImages.deleteicon)
        ],
        centerTitle: true,
      ),
    );
  }
}

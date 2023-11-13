import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commodity/repository/getnotfications.dart';
import 'package:commodity/reuseablewidgets/NotificationContainer.dart';
import 'package:commodity/screens/NavigationScreen.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import '../utilitis/icons.dart';
import '../utilitis/images.dart';
import '../utilitis/textstyles.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
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
      body: Center(
        child: Column(
          children: [
            FutureBuilder(
                future: getNotificationData(),
                builder: (context , snapshot) {
                  if(snapshot.hasData){
                    return Column(
                      children: List.generate(
                          snapshot.data!.length,
                              (index) => NotificationContainer(
                              notificationModel: snapshot.data![index]))
                    );
                  }
                  else {
                    return CircularProgressIndicator();
                  }
                } )
          ],
        ),
      ),
    );
  }
}

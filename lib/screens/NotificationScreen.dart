
import 'package:commodity/repository/getnotfications.dart';
import 'package:commodity/reuseablewidgets/NotificationContainer.dart';
import 'package:commodity/reuseablewidgets/customscreennavigator.dart';
import 'package:flutter/material.dart';
import '../model/Notificationmodel.dart';
import '../utilitis/colors.dart';
import '../utilitis/icons.dart';
import '../utilitis/images.dart';
import '../utilitis/textstyles.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}
bool selectAll = false;
List<NotificationModel> items = [];

void onSelectAllTap(){
  if(selectAll){
    items.clear();
  }
  else {
    items = List.from(items);
  }
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenNavigator()));
            },
            child: Image.asset(AppIcons.icon)),
        title: Text('Notifications',style : T11textStyle),
        actions: [
          InkWell(
              onTap: (){
                onSelectAllTap();
              },
              child: Image.asset(AppImages.deleteicon))
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            FutureBuilder(
                future : getNotificationData(),
                builder: (context , snapshot) {
                  if(snapshot.hasData){
                    return Column(
                        children : List.generate(
                        snapshot.data!.length,
                              (index) => NotificationContainer(
                              notificationModel: snapshot.data![index],
                              onDelete: (){
                              // DeleteNotifications(snapshot.data!);
                                //delete(snapshot.data![index]);
                              },
                              ))
                    );
                  }
                  else {
                    return Text('${snapshot.data}');
                  }
                } )
          ],
        ),
      ),
    );
  }
}
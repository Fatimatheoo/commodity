import 'package:commodity/repository/getnotfications.dart';
import 'package:commodity/reuseablewidgets/customscreennavigator.dart';
import 'package:commodity/reuseablewidgets/notificationcheckbox.dart';
import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import '../utilitis/gaps.dart';
import '../utilitis/icons.dart';
import '../utilitis/images.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}
bool _isCheckboxVisible = false;
bool _isSelectAllChecked = false;
List<bool> _checkboxStates = List.generate(2, (index) => false);


class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
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
              setState(() {
                _isCheckboxVisible = !_isCheckboxVisible;
              });
            },
              child: Image.asset(AppImages.deleteicon))
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
              Visibility(
                visible: _isCheckboxVisible,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Checkbox(
                      value: _isSelectAllChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isSelectAllChecked = value!;
                          _checkboxStates =
                              List.generate(2, (index) => _isSelectAllChecked);
                        });
                      },
                    ),
                    Text('Select All'),
                  ],
                ),
              ),
              VerticalGap(ScreenHeight(context)*0.1),
              FutureBuilder(
                  future : getNotificationData(),
                  builder: (context , snapshot) {
                    if(snapshot.hasData){
                      return Column(
                          children : List.generate(
                          snapshot.data!.length,
                                (index) =>  CheckboxContainer(
                                    visible: _isCheckboxVisible,
                                    notificationModel: snapshot.data![index],
                                    value: _checkboxStates[index],
                                    onchanged: (bool?value){
                                      setState(() {
                                        _checkboxStates[index] = value!;
                                      });
                                    },
                                ),
                          )
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
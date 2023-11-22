import 'package:commodity/utilitis/gaps.dart';
import 'package:flutter/material.dart';
import '../model/Notificationmodel.dart';
import '../utilitis/colors.dart';
import '../utilitis/textstyles.dart';

class CheckboxContainer extends StatelessWidget {
  const CheckboxContainer({super.key, required this.visible, this.onchanged, this.value, required this.notificationModel, this.onLongPress});

  final bool visible;
  final dynamic onchanged;
  final value;
  final NotificationModel notificationModel;
  final dynamic onLongPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: onLongPress,
      child: ListTile(
        leading: Visibility(
            visible: visible,
            child: Checkbox(
            value: value,
            onChanged: onchanged,
          ),
        ),
        title: Transform.translate(
          offset: Offset(-15,0),
          child: Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: CircleAvatar(backgroundColor:AppTheme.gray,child: Image.network('${notificationModel.image}') ),
              ),
              HorizontalGap(10),
              Container(
                  constraints: BoxConstraints(
                    maxWidth: 263,
                    minWidth: 100
                  ),
                  child: Text('${notificationModel.text}',style: T32textStyle,)),
            ],
          ),
        ),
       trailing: Text('${notificationModel.date}'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../model/Notificationmodel.dart';
import '../utilitis/colors.dart';
import '../utilitis/textstyles.dart';

class CheckboxContainer extends StatelessWidget {
  const CheckboxContainer({super.key, required this.visible, this.onchanged, this.value, required this.notificationModel});

  final bool visible;
  final dynamic onchanged;
  final value;
  final NotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Visibility(
          visible: visible,
          child: Checkbox(
          value: value,
          onChanged: onchanged,
        ),
      ),
      title: Row(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: CircleAvatar(backgroundColor:AppTheme.gray,child: Image.network('${notificationModel.image}') ),
          ),
          Text('${notificationModel.text}',style: T32textStyle,),
        ],
      ),
      trailing: Text('${notificationModel.date}'),
    );
  }
}

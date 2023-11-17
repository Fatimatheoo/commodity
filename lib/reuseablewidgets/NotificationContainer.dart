import 'package:commodity/model/Notificationmodel.dart';
import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import '../utilitis/gaps.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({super.key, required this.notificationModel, this.ontap, this.onDelete});

  final NotificationModel notificationModel;
  final VoidCallback? ontap;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      onLongPress: onDelete,
      child: Container(
        width: ScreenWidth(context)*0.9,
        child: Row(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: CircleAvatar(backgroundColor:AppTheme.gray,child: Image.network('${notificationModel.image}'),),
            ),
            HorizontalGap(10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('${notificationModel.text}',style: T32textStyle,),
                      ],
                    ),
                    HorizontalGap(ScreenWidth(context)*0.3),
                    Text('${notificationModel.date}',style: T31textStyle,)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:commodity/reuseablewidgets/Nobutton.dart';
import 'package:commodity/reuseablewidgets/Yesbutton.dart';
import 'package:commodity/utilitis/colors.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';

showAlertDialog(BuildContext context,VoidCallback ontap,VoidCallback onyestap ) {

  Widget alert = SizedBox(
    height: 185,
    width: 300,
    child: AlertDialog(
      backgroundColor: AppTheme.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      title: Text("    Do you want to cancel?    ",style: T24textStyle,),
      content: Text("       Lorem Ipsum is the printing and           "
                    "          typesetting industry" ,style: T25textStyle,),
      actions: [
        Container(
          width: 300,
          height: 1,
          color: AppTheme.rgb,
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NoButton(
                onTap: ontap,
              ),
              YesButton(
                text: 'Yes',
              onTap: onyestap,
              )
            ],
          ),
        )
      ],
    ),
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
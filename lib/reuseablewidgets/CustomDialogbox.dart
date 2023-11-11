import 'package:commodity/utilitis/colors.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () { },
  );

  // set up the AlertDialog
  Widget alert = Container(
    height: 185,
    width: 300,
    child: AlertDialog(
      backgroundColor: AppTheme.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      title: Center(child: Text("Do you want to cancel?",style: T24textStyle,)),
      content: Center(child: Text("Lorem Ipsum is the printing and typesetting industry",style: T25textStyle,)),
      actions: [
        okButton,
      ],
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
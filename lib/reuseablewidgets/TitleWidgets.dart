import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


Widget bottomTitleWidget(double value, TitleMeta meta){
  //const style =
  // TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold);
  String text;
  switch (value.toInt()) {
    case 0:
      text = 'Feb';
      break;
    case 1:
      text = 'April';
      break;
    case 2:
      text = 'Jun';
      break;
    case 3:
      text ='Aug';
      break;
    default:
      return Container();
  }
  return Text(text, style: TextStyle(fontSize: 15,));
}
Widget leftTitleWidget(double value, TitleMeta meta){
  //const style = TextStyle(fontSize: 15,fontWeight: FontWeight.w500);
  String text;
  switch (value.toInt()) {
    case 0:
      text = '0';
      break;
    case 1:
      text = '250';
      break;
    case 2:
      text = '500';
      break;
    case 3:
      text = '750';
      break;
    case 4:
      text ='1000';
      break;
    default:
      return Container();
  }
  return Text(text, style: TextStyle(fontSize: 15),);
}
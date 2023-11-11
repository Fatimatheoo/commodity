import 'package:commodity/reuseablewidgets/CustomBottomcontainer.dart';
import 'package:commodity/screens/Subscription/AboutScreen.dart';
import 'package:commodity/screens/Profile/Profile.dart';
import 'package:commodity/screens/Subscription/SubcriptionBenefits.dart';
import 'package:commodity/screens/Subscription/Subscription.dart';
import 'package:commodity/screens/Auth/loginscreen.dart';
import 'package:commodity/screens/Profile/personalinfoscreen.dart';
import 'package:commodity/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Profile(),
    );
  }
}
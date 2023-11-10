import 'dart:async';
import 'package:commodity/reuseablewidgets/imagecontainer.dart';
import 'package:commodity/reuseablewidgets/CustomBottomcontainer.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import 'login/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splashscreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  StartSplashTimer() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    StartSplashTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: Column(
          children : [
            Container(
              width: 440,
              height: ScreenHeight(context)*0.2,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff0ACCCA),
                    Color(0xff0080FF),
                  ]
                ),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(MediaQuery.of(context).size.height,440.0)
              )
               )
              ),
            VerticalGap(ScreenHeight(context)*0.2),
            Center(
              child: ImageContainer()
              ),
            Expanded(child: BottomContainer())
          ]),
    );
  }
}
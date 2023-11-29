import 'dart:async';
import 'package:commodity/reuseablewidgets/imagecontainer.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import '../../utilitis/images.dart';
import '../login/view/loginscreen.dart';

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
      body: Container(
        width: ScreenWidth(context),
        height: ScreenHeight(context),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.splash),
              fit: BoxFit.fill
          )
        ),
        child: Center(child: ImageContainer()),
      ),
    );
  }
}
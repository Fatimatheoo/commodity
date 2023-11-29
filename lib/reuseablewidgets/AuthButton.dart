import 'package:commodity/utilitis/colors.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utilitis/sizes.dart';
import '../views/login/controller/logincontroller.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key,
    this.ontap,
    required this.text});

  final VoidCallback? ontap;
  final String text;

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<Login>(context);
    return InkWell(
      onTap: ontap,
      child: Container(
        width: ScreenWidth(context)*0.8,
        height: 50,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [
                Color(0xff0ACCCA),
                Color(0xff0080FF),
              ]
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: controller.loading?
            Center(child:
            CircularProgressIndicator(color: AppTheme.white,),) :
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                text,
                style: T9textStyle)
          ],
        ),
      ),
    );
  }
}
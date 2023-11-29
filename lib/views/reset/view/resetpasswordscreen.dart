import 'package:commodity/reuseablewidgets/custombutton.dart';
import 'package:commodity/reuseablewidgets/customcurvecontainer.dart';
import 'package:commodity/reuseablewidgets/passwordtextfield.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/images.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utilitis/colors.dart';
import '../controller/resetcontroller.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var passwordcontroller = TextEditingController();
    var newpasswordcontroller = TextEditingController();
    var controller = Provider.of<Reset>(context);
    return Scaffold(
      body: Container(
        width: ScreenWidth(context),
        height: ScreenHeight(context),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.login),
            fit: BoxFit.fill
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              VerticalGap(ScreenHeight(context)*0.1),
              CustomContainer(),
              VerticalGap(ScreenHeight(context)*0.1),
              Center(child: Text(
                'CREATE NEW PASSWORD',
                style: T1textStyle,)),
              VerticalGap(20),
              PasswordTextfield(
                text: 'New Password',
                textEditingController: passwordcontroller,
                obscuretext: controller.passwordVisible,
                suffixIcon: IconButton(
                  icon: Icon(
                      controller.passwordVisible
                      ? Icons.remove_red_eye_outlined
                      : Icons.visibility_off,
                      color: AppTheme.Rgb),
                  onPressed: (){
                    controller.boolvalue();
                  },
                ),
              ),
              VerticalGap(10),
              PasswordTextfield(
                obscuretext: controller.passwordVisible,
                text: 'Confirm Password',
                textEditingController: newpasswordcontroller,
                suffixIcon: IconButton(
                  icon: Icon(
                      controller.passwordVisible
                      ? Icons.remove_red_eye_outlined
                      : Icons.visibility_off,
                      color: AppTheme.Rgb),
                  onPressed: (){
                    controller.boolvalue();
                  },
                ),
              ),
              VerticalGap(ScreenHeight(context)*0.1),
              const CustomButton(text: 'Submit'),
            ],
          ),
        ),
      ),
    );
  }
}
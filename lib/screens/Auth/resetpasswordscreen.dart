import 'package:commodity/reuseablewidgets/custombutton.dart';
import 'package:commodity/reuseablewidgets/customcurvecontainer.dart';
import 'package:commodity/reuseablewidgets/passwordtextfield.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';
import '../../utilitis/colors.dart';
import '../../reuseablewidgets/CustomBottomcontainer.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

var passwordcontroller = TextEditingController();
var newpasswordcontroller = TextEditingController();
bool passwordVisible = false;

class _ResetScreenState extends State<ResetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomContainer(),
            VerticalGap(ScreenHeight(context)*0.1),
            Center(child: Text('CREATE NEW PASSWORD',style: T1textStyle,)),
            VerticalGap(20),
            PasswordTextfield(
              text: 'New Password',
              textEditingController: passwordcontroller,
              obscuretext: passwordVisible,
              suffixIcon: IconButton(
                icon: Icon(passwordVisible
                    ? Icons.remove_red_eye_outlined
                    : Icons.visibility_off,
                    color: AppTheme.Rgb),
                onPressed: (){
                  setState(() {
                    passwordVisible =!passwordVisible;
                  });
                },
              ),
            ),
            VerticalGap(10),
            PasswordTextfield(
              obscuretext: passwordVisible,
              text: 'Confirm Password',
              textEditingController: newpasswordcontroller,
              suffixIcon: IconButton(
                icon: Icon(passwordVisible
                    ? Icons.remove_red_eye_outlined
                    : Icons.visibility_off,
                    color: AppTheme.Rgb),
                onPressed: (){
                  setState(() {
                    passwordVisible =!passwordVisible;
                  });
                },
              ),
            ),
            VerticalGap(ScreenHeight(context)*0.1),
            const CustomButton(text: 'Submit'),
            SizedBox(
                height: ScreenHeight(context)*0.3,
                child: const BottomContainer())
          ],
        ),
      ),
    );
  }
}

import 'package:commodity/reuseablewidgets/custombutton.dart';
import 'package:commodity/reuseablewidgets/customcurvecontainer.dart';
import 'package:commodity/reuseablewidgets/customtextbox.dart';
import 'package:commodity/reuseablewidgets/customtextfield.dart';
import 'package:commodity/reuseablewidgets/passwordtextfield.dart';
import 'package:commodity/screens/Auth/forgetpasswordscreen.dart';
import 'package:commodity/screens/Auth/registerscreen.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/icons.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';

import '../../utilitis/colors.dart';
import '../../reuseablewidgets/CustomBottomcontainer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool passwordVisible = false;
    var emailcontroller = TextEditingController();
    var passwordcontroller = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        const CustomContainer(),
        VerticalGap(20),
        Center(child: Text('WELCOME!',style: T1textStyle,)),
        VerticalGap(30),
        CustomTextField(
            text: 'Enter email',
            textEditingController: emailcontroller,
            prefixIcon: Image.asset(AppIcons.email)),
        VerticalGap(10),
        PasswordTextfield(
            text: 'Password',
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
        VerticalGap(7),
        SizedBox(
          width: ScreenWidth(context)*0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  child: Text('Forgot  Password?',style: T6textStyle,),
              onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPassworsScreen()));
              },
              )
            ],
          ),
        ),
        VerticalGap(ScreenHeight(context)*0.04),
        const CustomButton(text: 'Login'),
        VerticalGap(ScreenHeight(context)*0.04),
           CustomTextBox(text: 'Register Now',
           account: 'Dont have an account?',
           ontap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> const Registerscreen()));
           },
           ),
        const SizedBox(
            height: 245,
            child: BottomContainer())
          ],
        ),
      ),
    );
  }
}
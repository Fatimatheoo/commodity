import 'package:commodity/reuseablewidgets/custombutton.dart';
import 'package:commodity/reuseablewidgets/customcurvecontainer.dart';
import 'package:commodity/reuseablewidgets/customscreennavigator.dart';
import 'package:commodity/reuseablewidgets/customtextbox.dart';
import 'package:commodity/reuseablewidgets/customtextfield.dart';
import 'package:commodity/reuseablewidgets/passwordtextfield.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/icons.dart';
import 'package:commodity/utilitis/images.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../reuseablewidgets/AuthButton.dart';
import '../../../utilitis/colors.dart';
import '../../register/view/registerscreen.dart';
import '../controller/logincontroller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Login>(context);
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
            'WELCOME!',
            style: T1textStyle,)),
          VerticalGap(30),
          CustomTextField(
              text: 'Enter email',
              textEditingController: controller.email,
              prefixIcon: Image.asset(AppIcons.email)),
          VerticalGap(10),
          PasswordTextfield(
              text: 'Password',
              textEditingController: controller.password,
              obscuretext: controller.passwordVisible,
              suffixIcon: IconButton(
                 icon:
                 Icon(
                     controller.passwordVisible ?
                 Icons.remove_red_eye_outlined :
                 Icons.visibility_off,
                 color: AppTheme.Rgb),
                onPressed: (){
                   controller.boolvalue();
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
                      Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (context)=> ScreenNavigator()),
                              (route) => true);
                },
                )
              ],
            ),
          ),
          VerticalGap(ScreenHeight(context)*0.04),
              AuthButton(text: 'Login',
            ontap: (){
              controller.SigninUser(
                  context,
                  controller.email.text.trim(),
                  controller.password.text.trim());
            },),
          VerticalGap(ScreenHeight(context)*0.04),
             CustomTextBox(text: 'Register Now',
             account: 'Dont have an account?',
             ontap: (){
               Navigator.push(context, MaterialPageRoute(
                   builder: (context)=> const Registerscreen()));
             },
             ),
            ],
          ),
        ),
      ),
    );
  }
}
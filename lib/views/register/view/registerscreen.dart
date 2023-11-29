import 'package:commodity/reuseablewidgets/custombutton.dart';
import 'package:commodity/reuseablewidgets/customcurvecontainer.dart';
import 'package:commodity/reuseablewidgets/customtextfield.dart';
import 'package:commodity/reuseablewidgets/passwordtextfield.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/icons.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:commodity/views/register/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../reuseablewidgets/AuthButton.dart';
import '../../../reuseablewidgets/customtextbox.dart';
import '../../../utilitis/colors.dart';
import '../../../utilitis/images.dart';
import '../../login/view/loginscreen.dart';

class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<Register>(context);
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
              Center(
                  child: Text(
                'REGISTER',
                style: T1textStyle,)),
              VerticalGap(20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextField(
                      text: 'Full Name',
                      textEditingController: controller.name,
                      prefixIcon: Image.asset(AppIcons.person)),
                  VerticalGap(10),
                  CustomTextField(
                      text: 'Enter email/mobile',
                      textEditingController: controller.email,
                      prefixIcon: Image.asset(AppIcons.email)),
                  VerticalGap(10),
                  PasswordTextfield(
                    text: 'Password',
                    textEditingController: controller.password,
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
                    text: 'Confirm Password',
                    obscuretext: controller.passwordVisible,
                    textEditingController: controller.confirm,
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
                ],
              ),
              VerticalGap(20),
              AuthButton(text: 'Register',
                ontap: (){
                   controller.RegisterUser(context,
                       controller.email.text.trim(),
                       controller.password.text.trim(),
                       controller.name.text.trim()
                   );
                },
              ),
              VerticalGap(10),
              CustomTextBox(text: 'Signin',
                account: 'Have an account?',
                ontap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> const LoginScreen()));
                },
              ),
            ]),
        ),
      )
      );
  }
}
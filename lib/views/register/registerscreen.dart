import 'package:commodity/provider/registerprovider.dart';
import 'package:commodity/reuseablewidgets/custombutton.dart';
import 'package:commodity/reuseablewidgets/customcurvecontainer.dart';
import 'package:commodity/reuseablewidgets/customtextfield.dart';
import 'package:commodity/reuseablewidgets/passwordtextfield.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/icons.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../reuseablewidgets/customtextbox.dart';
import '../../utilitis/colors.dart';
import '../../reuseablewidgets/CustomBottomcontainer.dart';
import '../../utilitis/images.dart';
import '../login/loginscreen.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}
var namecontroller = TextEditingController();
var emailcontroller = TextEditingController();
var passwordcontroller = TextEditingController();
var confirmcontroller = TextEditingController();
bool passwordVisible = false;

class _RegisterscreenState extends State<Registerscreen> {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<SignUpProvider>(context);
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
              Center(child: Text('REGISTER',style: T1textStyle,)),
              VerticalGap(20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextField(
                      text: 'Full Name',
                      textEditingController: namecontroller,
                      prefixIcon: Image.asset(AppIcons.person)),
                  VerticalGap(10),
                  CustomTextField(
                      text: 'Enter email/mobile',
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
                  VerticalGap(10),
                  PasswordTextfield(
                    text: 'Confirm Password',
                    obscuretext: passwordVisible,
                    textEditingController: confirmcontroller,
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
                ],
              ),
              VerticalGap(20),
              CustomButton(text: 'Register',
                ontap: (){
                   authProvider.RegisterUser(context,
                       emailcontroller.text.trim(),
                       passwordcontroller.text.trim(),
                       namecontroller.text.trim()
                   );
                },
              ),
              VerticalGap(10),
              CustomTextBox(text: 'Signin',
                account: 'Have an account?',
                ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                },
              ),
            ]),
        ),
      )
      );
  }
}
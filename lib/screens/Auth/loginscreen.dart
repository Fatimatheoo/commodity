import 'package:commodity/reuseablewidgets/custombutton.dart';
import 'package:commodity/reuseablewidgets/customcurvecontainer.dart';
import 'package:commodity/reuseablewidgets/customtextbox.dart';
import 'package:commodity/reuseablewidgets/customtextfield.dart';
import 'package:commodity/reuseablewidgets/passwordtextfield.dart';
import 'package:commodity/screens/Auth/forgetpasswordscreen.dart';
import 'package:commodity/screens/Auth/registerscreen.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/icons.dart';
import 'package:commodity/utilitis/images.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/SigninProvider.dart';
import '../../utilitis/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

var emailcontroller = TextEditingController();
var passwordcontroller = TextEditingController();
bool passwordvisible = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<SigninProvider>(context);
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
                 icon: Icon(passwordVisible ?
                 Icons.remove_red_eye_outlined :
                 Icons.visibility_off,
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
              CustomButton(text: 'Login',
            ontap: (){
              authProvider.SigninUser(
                  context,
                  emailcontroller.text.trim(),
                  passwordcontroller.text.trim());
            },),
          VerticalGap(ScreenHeight(context)*0.04),
             CustomTextBox(text: 'Register Now',
             account: 'Dont have an account?',
             ontap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> const Registerscreen()));
             },
             ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:commodity/reuseablewidgets/custombutton.dart';
import 'package:commodity/reuseablewidgets/customcurvecontainer.dart';
import 'package:commodity/reuseablewidgets/customtextfield.dart';
import 'package:commodity/screens/resetpassword/resetpasswordscreen.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/icons.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';
import '../../reuseablewidgets/CustomBottomcontainer.dart';

class ForgotPassworsScreen extends StatelessWidget {
  const ForgotPassworsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailcontroller = TextEditingController();

    return Scaffold(
    body: SingleChildScrollView(
      child: Column(
          children: [
            const CustomContainer(),
            VerticalGap(ScreenHeight(context)*0.1),
            Center(child: Text('FORGET PASSWORD',style: T1textStyle,)),
            Center(
              child: Text('Enter your gmail below to',style: T5textStyle,),
            ),
            Center(
              child: Text('receive password instructions',style: T5textStyle,),
            ),
            VerticalGap(20),
            CustomTextField(
                text: 'Enter email',
                textEditingController: emailcontroller,
                prefixIcon: Image.asset(AppIcons.email)),
            VerticalGap(ScreenHeight(context)*0.1),
             CustomButton(
                text: 'Get OTP',
            onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const ResetScreen()));
            },),
            SizedBox(
                height: 245,
                child: BottomContainer())
          ],
        ),
    ),
    );
  }
}
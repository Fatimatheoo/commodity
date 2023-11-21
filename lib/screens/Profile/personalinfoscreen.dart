import 'package:commodity/reuseablewidgets/custombutton.dart';
import 'package:commodity/reuseablewidgets/customscreennavigator.dart';
import 'package:commodity/reuseablewidgets/customtextfield.dart';
import 'package:commodity/reuseablewidgets/passwordtextfield.dart';
import 'package:commodity/screens/Profile/Profile.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import '../../utilitis/colors.dart';
import '../../utilitis/icons.dart';
import '../../utilitis/textstyles.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {

 var namecontroller = TextEditingController();
 var emailcontroller = TextEditingController();
 var passwordcontroller = TextEditingController();
 var confirmcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool passwordVisible = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        leading : InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenNavigator()));
            },
            child: Image.asset(AppIcons.icon)),
        title: Text('Personal Information',style : T11textStyle),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VerticalGap(ScreenHeight(context)*0.1),
               CustomTextField(text: 'Hafiz Ahmad', textEditingController: namecontroller, prefixIcon: Image.asset(AppIcons.person)),
              VerticalGap(10),
               CustomTextField(text: '0324 4925348', textEditingController: emailcontroller, prefixIcon: Image.asset(AppIcons.email)),
              VerticalGap(10),
               PasswordTextfield(text: '**********', textEditingController: passwordcontroller,
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
                  obscuretext: passwordVisible),
            VerticalGap(10),
              PasswordTextfield(text: '**********', textEditingController: confirmcontroller,
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
                  obscuretext: passwordVisible),
              VerticalGap(ScreenHeight(context)*0.2),
              const CustomButton(text: 'Save')
            ],
          ),
        ),
      ),
    );
  }
}

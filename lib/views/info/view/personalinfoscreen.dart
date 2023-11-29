import 'package:commodity/reuseablewidgets/custombutton.dart';
import 'package:commodity/reuseablewidgets/customscreennavigator.dart';
import 'package:commodity/reuseablewidgets/customtextfield.dart';
import 'package:commodity/reuseablewidgets/passwordtextfield.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/views/info/controller/info_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utilitis/colors.dart';
import '../../../utilitis/icons.dart';
import '../../../utilitis/textstyles.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<Info>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        leading : InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> ScreenNavigator()));
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
               CustomTextField(
                   text: 'Hafiz Ahmad',
                   textEditingController: controller.name,
                   prefixIcon: Image.asset(AppIcons.person)),
              VerticalGap(10),
               CustomTextField(
                   text: '0324 4925348',
                   textEditingController: controller.email,
                   prefixIcon: Image.asset(AppIcons.email)),
              VerticalGap(10),
               PasswordTextfield(
                   text: '**********',
                   textEditingController: controller.password,
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
                  obscuretext: controller.passwordVisible),
            VerticalGap(10),
              PasswordTextfield(
                  text: '**********',
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
                  obscuretext: controller.passwordVisible),
              VerticalGap(ScreenHeight(context)*0.2),
              const CustomButton(
                  text: 'Save')
            ],
          ),
        ),
      ),
    );
  }
}
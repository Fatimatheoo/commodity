import 'package:commodity/reuseablewidgets/AnimatedContainer.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utilitis/icons.dart';
import '../views/Subscription/Subscription.dart';
import '../views/about/AboutScreen.dart';
import '../views/info/personalinfoscreen.dart';

class CustomList extends StatefulWidget {
  const CustomList({super.key});

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return SizedBox(
      height: ScreenHeight(context)*0.5,
      width:  ScreenWidth(context)*0.9,
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(AppIcons.account),
            title: Text('Personal Information',style: T12textStyle,),
            trailing: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PersonalInformation()));
              },
              child: Image.asset(AppIcons.pencil),
            ),
          ),
          ListTile(
            leading: Image.asset(AppIcons.crown),
            title: Text('Subscription',style: T12textStyle,),
            trailing: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SubcriptionScreen()));
              },
              child: Image.asset(AppIcons.Arrow),
            ),
          ),
          ListTile(
            leading: Image.asset(AppIcons.bell),
            title: Text('Screen Notifications',style: T12textStyle,),
            trailing: CustomAnimated()
            ),
          ListTile(
            leading: Image.asset(AppIcons.info),
            title: Text('About Us',style: T12textStyle,),
            trailing: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutScreen()));
              },
              child: Image.asset(AppIcons.Arrow),
            ),
          ),
          ListTile(
            leading: Image.asset(AppIcons.sheild),
            title: Text('Privacy Policy',style: T12textStyle,),
            trailing: InkWell(
              onTap: (){},
              child: Image.asset(AppIcons.Arrow),
            ),
          ),
          ListTile(
            leading: Image.asset(AppIcons.star),
            title: Text('Term of Use',style: T12textStyle,),
            trailing: InkWell(
              onTap: (){},
              child: Image.asset(AppIcons.Arrow),
            ),
          ),
        ],
      ),
    );
  }
}

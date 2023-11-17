import 'package:commodity/utilitis/colors.dart';
import 'package:commodity/utilitis/vectors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget HomeIcon = ShaderMask(shaderCallback: (bounds){
return LinearGradient(colors: [
        Color(0xff0ACCCA),
        Color(0xff0080FF)
      ]).createShader(bounds);
 },
  child: SvgPicture.asset(AppNavIcons.home));

Widget ProfileIcon = ShaderMask(shaderCallback: (bounds){
  return LinearGradient(colors: [
    Color(0xff0ACCCA),
    Color(0xff0080FF),
  ]).createShader(bounds);
},
  child: SvgPicture.asset(AppNavIcons.profile,),);

Widget AlertIcon = ShaderMask(shaderCallback: (bounds){
  return LinearGradient(
      colors: [
    Color(0xff0ACCCA),
    Color(0xff0080FF),
  ]).createShader(bounds);
},
  child: SvgPicture.asset(AppNavIcons.bell),);

Widget Alert = SvgPicture.asset(AppNavIcons.bell,color:  AppTheme.Rgb,);
Widget profile = SvgPicture.asset(AppNavIcons.profile,color: AppTheme.Rgb,);
Widget Home = SvgPicture.asset(AppNavIcons.home ,color: AppTheme.Rgb);

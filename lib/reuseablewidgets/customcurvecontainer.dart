import 'package:flutter/material.dart';
import 'package:image_pixels/image_pixels.dart';
import '../utilitis/colors.dart';
import '../utilitis/sizes.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    const AssetImage logo = AssetImage('assets/images/group.png');
    return Container(
      width: 440,
      height: ScreenHeight(context)*0.3,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [
                Color(0xff0ACCCA),
                Color(0xff0080FF),
              ]
          ),
          borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(MediaQuery.of(context).size.height,440.0)
          )
      ),
      child:
      Center(
        child: ImagePixels.container(
          imageProvider: logo,
          child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: AppTheme.black,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 2,
                      color: AppTheme.white
                  )
              ),
              child: const Image(image: logo,)),
        ),
      ),
    );
  }
}

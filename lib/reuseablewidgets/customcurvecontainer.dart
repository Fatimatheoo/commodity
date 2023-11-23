import 'package:flutter/material.dart';
import 'package:image_pixels/image_pixels.dart';
import '../utilitis/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    const AssetImage logo = AssetImage('assets/images/group.png');
    return ImagePixels.container(
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
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:image_pixels/image_pixels.dart';

import '../utilitis/colors.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final AssetImage logo = const AssetImage('assets/images/logo.png');
    return ImagePixels.container(
      imageProvider: logo,
      child: Container(
          width: 280,
          height: 280,
          decoration: BoxDecoration(
              color: AppTheme.black,
              shape: BoxShape.circle,
              border: Border.all(
                  width: 8,
                  color: AppTheme.secondarycolor
              )
          ),
          child: Image(image: logo,)),
    );
  }
}

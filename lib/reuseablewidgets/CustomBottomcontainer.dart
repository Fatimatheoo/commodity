import 'package:flutter/material.dart';

import 'CustomPainter.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShaderMask(
             shaderCallback: (Rect bounds){
               return const LinearGradient(colors: [
                 Color(0xff0ACCCA),
                 Color(0xff0080FF),
               ]).createShader(bounds);
             },
             child: CustomPaint(
      size: Size(440,(440*0.5833333333333334).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: Custompainter(),
    ),
           ),
    );
  }
}


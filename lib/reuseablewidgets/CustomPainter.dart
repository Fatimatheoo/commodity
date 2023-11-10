import 'package:flutter/cupertino.dart';

class Custompainter extends CustomPainter{

    @override
    void paint(Canvas canvas, Size size) {
    Paint paint_fill_0 = Paint()
    ..color = Color(0xff0ACCCA)
    ..style = PaintingStyle.fill
    ..strokeWidth = size.width * 0.00
    ..strokeCap = StrokeCap.butt
    ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0825000, size.height * 0.9957143);
    path_0.quadraticBezierTo(
    size.width * 0.2744083, size.height * 0.7840571, size.width * 0.5011083,
    size.height * 0.7857286);
    path_0.quadraticBezierTo(
    size.width * 0.7563583, size.height * 0.7832571, size.width * 0.9163167,
    size.height * 0.9943000);

    canvas.drawPath(path_0, paint_fill_0,);
    }
    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    }
    }

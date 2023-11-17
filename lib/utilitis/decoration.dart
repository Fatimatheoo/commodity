

import 'package:commodity/utilitis/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

BoxDecoration border = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  border: GradientBoxBorder(
    gradient: AppTheme.gradient
  ),
  color: AppTheme.white
);

BoxDecoration nongradient = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  gradient: AppTheme.gradient
);
import 'package:commodity/utilitis/images.dart';
import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key,required this.textEditingController, this.ontap, this.onchanged,
  });

  final TextEditingController textEditingController;
  final VoidCallback? ontap;
  final dynamic onchanged;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenWidth(context)*0.9,
        height: 40,
        decoration: BoxDecoration(
          color : AppTheme.gray,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: AppTheme.rgb,
                width: 1
            )
        ),
        child: TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            alignLabelWithHint: true,
              border: InputBorder.none,
              prefixIcon: Image.asset(AppImages.magnify),
              hintText: 'Search here',
              hintStyle: T26textStyle),
          style: T26textStyle,
          onTap: ontap,
          onChanged: onchanged,
        )
    );
  }
}
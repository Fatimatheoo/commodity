import 'package:commodity/model/percentagemodel.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';

class PercentageContainer extends StatelessWidget {
  const PercentageContainer({super.key, required this.percentageModel});

  final PercentageModel percentageModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text('${percentageModel.name}',style: T39textStyle,),
            Text('${percentageModel.value}',style: T40textStyle,)
          ],
        ),
      ],
    );
  }
}

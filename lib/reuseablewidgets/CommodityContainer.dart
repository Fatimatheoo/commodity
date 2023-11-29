import 'package:commodity/model/commoditylistmodel.dart';
import 'package:commodity/utilitis/colors.dart';
import 'package:commodity/utilitis/images.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'gradienttext.dart';

class CommodityContainer extends StatelessWidget {
  const CommodityContainer({super.key, this.ontap, required this.commodity, this.onpressed});

  final VoidCallback? ontap;
  final Commodity commodity;
  final dynamic onpressed;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
    child: Slidable(
      key: Key('$commodity'),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
        SlidableAction(onPressed : onpressed,
        backgroundColor: AppTheme.white,
          icon: Icons.delete_rounded,
        )
      ],
      ),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 80,
          width: ScreenWidth(context)*0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppTheme.gray
          ),
          child: ListTile(
            leading: Image.asset('${commodity.image}'),
            title: GradientText('${commodity.text}', gradient: AppTheme.gradient, style: T27textStyle),
            subtitle: Text('${commodity.info}',style: T29textStyle,),
            trailing: Container(
              width: 100,
              height: 40,
              child: Row(
                children: [
                  SizedBox(
                    width: 24,height: 24,
                    child: Image.asset(AppImages.chartline),
                  ),
                  Column(
                    children: [
                      Text('   173.00',style: T28textStyle,),
                      Text('+0.12+0.07%',style: T30textStyle,)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ),
    );
  }
}
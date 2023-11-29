import 'package:commodity/model/commoditylistmodel.dart';
import 'package:commodity/utilitis/colors.dart';
import 'package:commodity/utilitis/images.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:commodity/utilitis/textstyles.dart';
import 'package:flutter/material.dart';
import 'gradienttext.dart';

class CommodityAddContainer extends StatelessWidget {
  const CommodityAddContainer({super.key, this.ontap, required this.commodity});

  final VoidCallback? ontap;
  final Commodity commodity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
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
              width: 130,
              height: 40,
              child: Row(
                children: [
                  SizedBox(
                    width: 24,height: 24,
                    child: CircleAvatar(child: Image.asset(AppImages.pak)),
                  ),
                  Column(
                    children: [
                      Text('   173.00',style: T28textStyle,),
                      Text('+0.12+0.07%',style: T30textStyle,)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppTheme.white
                        ),
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: Icon(Icons.add,size: 24,color: AppTheme.black,),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
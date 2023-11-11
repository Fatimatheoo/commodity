import 'package:commodity/data/CommodityListModel.dart';
import 'package:commodity/reuseablewidgets/searchtextfield.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/images.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import '../reuseablewidgets/CommodityContainer.dart';
import '../utilitis/colors.dart';
import '../utilitis/textstyles.dart';
import 'AddCommodity.dart';
import 'NotificationScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        leading: Image.asset(AppImages.commodity),
        title: Text('Welcome Hafiz',style : T11textStyle),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=> NotificationScreen()));
          }, icon: Image.asset(AppImages.bellicon))
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchTextfield(textEditingController: searchcontroller),
            VerticalGap(ScreenHeight(context)*0.1),
            SizedBox(
              width: ScreenWidth(context)*0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Commodity Stock',style: T13textStyle,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AddCommodity()));
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        gradient: AppTheme.gradient,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Icon(Icons.add,size: 24,color: AppTheme.white,),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: AppTheme.rGB,
            ),
            SizedBox(
              height: 600,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                    commodity.length, (index) => CommodityContainer(
                  commodity :  commodity[index],
                  ontap: (){},
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

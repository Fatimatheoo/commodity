import 'package:commodity/data/CommodityListModel.dart';
import 'package:commodity/reuseablewidgets/CommodityContainer.dart';
import 'package:commodity/reuseablewidgets/searchtextfield.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import '../utilitis/colors.dart';
import '../utilitis/textstyles.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        title: Text('Commodity Alert',style : T11textStyle),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchTextfield(textEditingController: searchcontroller),
              VerticalGap(ScreenHeight(context)*0.03),
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
      ),
    );
  }
}

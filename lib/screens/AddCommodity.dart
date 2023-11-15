import 'package:commodity/reuseablewidgets/AddCommoditycontainer.dart';
import 'package:commodity/reuseablewidgets/searchtextfield.dart';
import 'package:commodity/screens/NavigationScreen.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import '../data/CommodityListModel.dart';
import '../utilitis/colors.dart';
import '../utilitis/icons.dart';
import '../utilitis/textstyles.dart';

class AddCommodity extends StatelessWidget {
  const AddCommodity({super.key});

  @override
  Widget build(BuildContext context) {
    var searchcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation:1,
        bottomOpacity: 0.6,
        backgroundColor: AppTheme.white,
        leading : InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomNavigationBar()));
            },
            child: Image.asset(AppIcons.icon)),
        title: Text('Add Commodity',style : T11textStyle),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VerticalGap(ScreenHeight(context)*0.03),
            SearchTextfield(textEditingController: searchcontroller),
            VerticalGap(ScreenHeight(context)*0.02),
            SizedBox(
              height: 600,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                    commodity.length, (index) => CommodityAddContainer(
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

import 'package:commodity/data/CommodityListModel.dart';
import 'package:commodity/provider/UserProvider.dart';
import 'package:commodity/reuseablewidgets/TabWidget.dart';
import 'package:commodity/reuseablewidgets/modalsheet.dart';
import 'package:commodity/reuseablewidgets/searchtextfield.dart';
import 'package:commodity/utilitis/gaps.dart';
import 'package:commodity/utilitis/images.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../reuseablewidgets/CommodityContainer.dart';
import '../../utilitis/colors.dart';
import '../../utilitis/textstyles.dart';
import '../commodity/AddCommodity.dart';
import '../notification/NotificationScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    var searchcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.white,
        leading: Image.asset(AppImages.commodity),
        title: FutureBuilder(
            future: userProvider.fetchUsername(),
            builder: (context,snapshot){
              if(snapshot.hasData){
                return Text('Welcome, ${userProvider.username}',
                  style:  T11textStyle,);
              }else{
                 return Text('${snapshot.error}');
              }
            },),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(
                builder: (context)=> NotificationScreen()));
          }, icon: Image.asset(AppImages.bellicon))
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchTextfield(
                textEditingController: searchcontroller),
            VerticalGap(10),
            DefaultTabController(
                length: 5,
                initialIndex: 0,
                child: Column(
                  children : [
                    Container(
                      child: TabBar(
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 15),
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: AppTheme.white,
                        unselectedLabelColor: AppTheme.Primarycolor,
                        indicator: BoxDecoration(
                          gradient: AppTheme.gradient,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        tabs: [
                          TabWidgetC(title: "All"),
                          TabWidgetC(title: "Stock"),
                          TabWidgetC(title: "Crypto"),
                          TabWidgetC(title: "Business"),
                          TabWidgetC(title: "Business"),
                        ],
                      ),
                    )
                  ]
                )),
            VerticalGap(10),
            SizedBox(
              width: ScreenWidth(context)*0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Commodity Stock',
                    style: T13textStyle,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> AddCommodity()));
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        gradient: AppTheme.gradient,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Icon(Icons.add,
                        size: 24,
                        color: AppTheme.white,),
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
              child: (commodity.isEmpty) ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.hourglass_empty_rounded,
                    color: AppTheme.Rgb,),
                  Text(
                    'STOCK IS EMPTY',
                    style: T5textStyle,)
                ],
              ) :ListView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                    commodity.length, (index) => CommodityContainer(
                  commodity :  commodity[index],
                  ontap: (){
                    showModalBottomSheet(
                      isScrollControlled: true,
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)
                          )
                        ),
                        builder: (BuildContext context){
                          return modalsheet();
                        });
                  },
                  onpressed: (context){
                    setState(() {
                      commodity.removeAt(index);
                    });
                  },
                )),
              ) ,
            )
          ],
        ),
      ),
    );
  }
}
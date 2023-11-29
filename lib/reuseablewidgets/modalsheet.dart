import 'package:commodity/data/PercentageModel.dart';
import 'package:commodity/reuseablewidgets/ModalTabWidget.dart';
import 'package:commodity/reuseablewidgets/percentagecontainer.dart';
import 'package:commodity/utilitis/colors.dart';
import 'package:commodity/utilitis/sizes.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../utilitis/images.dart';
import '../utilitis/textstyles.dart';
import 'gradienttext.dart';

class modalsheet extends StatelessWidget {
  const modalsheet({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Feb', 0),
      ChartData('Apr', 990),
      ChartData('Jun', 495),
      ChartData('Nov', 260),
    ];
    final List<ChartData> chartdata = [
      ChartData('Feb', 255),
      ChartData('Apr', 495),
      ChartData('Jun', 235),
      ChartData('Nov', 510),
    ];
    return Container(
      width: ScreenWidth(context),
      height: MediaQuery.of(context).size.height * 0.80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppTheme.white
      ),
      child: Column(
        children: [
          Container(
            width: 88,
            height: 4,
            decoration: BoxDecoration(
                gradient: AppTheme.gradient
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset(AppImages.close)),
            ],
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.lightblack
            ),
            child: Image.asset(AppImages.apple),
          ),
          GradientText('APPLE INC.',
              gradient: AppTheme.gradient,
              style: T33textStyle),
          Text('APPL NASDQ',
            style: T34textStyle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('173.00',style: T35textStyle ,),
              Text(' USD',style: T5textStyle,)
            ],
          ),
          Text('+0.12  +0.07% today',
            style: T36textStyle,),
          Text('+43.38  +33.47% year to date',
            style: T36textStyle,),
          SizedBox(
            width: 360,
            height: 190,
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              series: <ChartSeries>[
                AreaSeries<ChartData, String>(
                    dataSource: chartData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    color: Color.fromRGBO(10, 204, 205, 0.60)
                ),
                AreaSeries<ChartData, String>(
                    dataSource: chartdata,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    color: Color.fromRGBO(0, 128, 255, 0.60)
                ),
              ],
            ),
          ),
          DefaultTabController(
              length: 5,
              initialIndex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children : [
                    Container(
                      width : 360,
                      child: TabBar(
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 15),
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: AppTheme.white,
                        unselectedLabelColor: AppTheme.lightblack,
                        indicator: BoxDecoration(
                          gradient: AppTheme.gradient,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        tabs: [
                          ModalTabWidget(title: "1 D"),
                          ModalTabWidget(title: "5 D"),
                          ModalTabWidget(title: "YTD"),
                          ModalTabWidget(title: "1 Y"),
                          ModalTabWidget(title: "All",)
                        ],
                      ),
                    )
                  ]
              )),
          Container(
            width: ScreenWidth(context),
            height: 48,
            child: ListView(
              children: List.generate(
                  percentageModel.length,
                      (index) => PercentageContainer(
                          percentageModel: percentageModel[index])
              ),
            )
          ),
          Divider(
            thickness: 1,
            color: AppTheme.lightblack,
          )
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final int y;
}
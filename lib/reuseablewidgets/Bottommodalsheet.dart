import 'package:commodity/reuseablewidgets/linechart.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../utilitis/colors.dart';
import '../utilitis/gaps.dart';
import '../utilitis/images.dart';
import '../utilitis/sizes.dart';
import '../utilitis/textstyles.dart';
import 'TabWidget.dart';
import 'gradienttext.dart';

class BottomModalheet extends StatelessWidget {
  const BottomModalheet({super.key});

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
      height: ScreenHeight(context)*0.6,
      decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          border: GradientBoxBorder(
              gradient: AppTheme.gradient
          )
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
          GradientText('APPLE INC.', gradient: AppTheme.gradient, style: T33textStyle),
          Text('APPL NASDQ',style: T34textStyle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('173.00',style: T35textStyle ,),
              Text(' USD',style: T5textStyle,)
            ],
          ),
          Text('+0.12  +0.07% today',style: T36textStyle,),
          Text('+43.38  +33.47% year to date',style: T36textStyle,),
          VerticalGap(ScreenHeight(context)*0.1),
         // Divider(
            //thickness: 1,
            //color: AppTheme.Rgb,
          //),
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
          //LineCharts(),
          DefaultTabController(
              length: 7,
              initialIndex: 4,
              child: Column(
                  children : [
                    Container(
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
                          TabWidgetC(title: "1 D"),
                          TabWidgetC(title: "5 D"),
                          TabWidgetC(title: "1 M"),
                          TabWidgetC(title: "YTD"),
                          TabWidgetC(title: "1 Y"),
                          TabWidgetC(title: "5 Y",),
                          TabWidgetC(title: "All",)
                        ],
                      ),
                    )
                  ]
              )),
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

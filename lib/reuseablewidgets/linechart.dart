import 'package:commodity/utilitis/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'TitleWidgets.dart';

class LineCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 0.0;
    return SizedBox(
          width: 330,
          height: 180,
          child: LineChart(
            LineChartData(
              lineTouchData: LineTouchData(enabled: false),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 0),
                    FlSpot(1, 1000),
                    FlSpot(2, 495),
                    FlSpot(3, 270),
                  ],
                  isCurved: false,
                  barWidth: 1,
                  color:
                  Colors.black,
                  belowBarData: BarAreaData(
                    show: true,
                    color: AppTheme.fill,
                    cutOffY: cutOffYValue,
                    applyCutOffY: true,
                  ),
                  aboveBarData: BarAreaData(
                    show: true,
                    color: Colors.blue,
                    cutOffY: cutOffYValue,
                    applyCutOffY: true,
                  ),
                  dotData: FlDotData(
                    show: false,
                  ),
                ),
              ],
              minY: 0,
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles : SideTitles(
                    showTitles: true,
                    reservedSize: 6,
                    getTitlesWidget: bottomTitleWidget,
                  ),),
                leftTitles: AxisTitles(
                  sideTitles : SideTitles(
                      showTitles: true,
                      getTitlesWidget: leftTitleWidget
                  ),
                ),),
              gridData: FlGridData(
                show: true,
                checkToShowHorizontalLine: (double value) {
                  return value == 1 || value == 2 || value == 3 || value == 4;
                },
              ),
            ),
          ),
    );
  }
}

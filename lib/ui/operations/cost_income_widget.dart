import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/contants/ui_contants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CostIncomeWidget extends StatefulWidget {
  static const ROUTE_NAME = 'CostIncomeWidget';

  @override
  _CostIncomeWidgetState createState() => _CostIncomeWidgetState();
}

class _CostIncomeWidgetState extends State<CostIncomeWidget> {
  static const TAG = 'CostIncomeWidget';
  var chartData = [
    ChartData(x: 0, y1: 1.0, y2: 2.0, y3: 3.0),
    ChartData(x: 1, y1: 1.5, y2: 2.5, y3: 3.5),
    ChartData(x: 2, y1: 1.9, y2: 2.9, y3: 3.9),
    ChartData(x: 3, y1: 1.9, y2: 2.9, y3: 3.9),
    ChartData(x: 4, y1: 1.9, y2: 2.9, y3: 3.9),
    ChartData(x: 5, y1: 1.9, y2: 2.9, y3: 3.9)
  ];
  TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            )
          ]),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16,top: 16),
            child: Text(
              'Cost and Income',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: ColorContants.grey1,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          SfCartesianChart(
              tooltipBehavior: _tooltipBehavior,
              legend: Legend(isVisible: true,position:LegendPosition.bottom),
              primaryXAxis: NumericAxis(),
              series: <ChartSeries>[
                StackedAreaSeries<ChartData, double>(
                    dataSource: chartData,
                    enableTooltip: true,
                    xValueMapper: (ChartData sales, _) => sales.x,
                    yValueMapper: (ChartData sales, _) => sales.y1),
                StackedAreaSeries<ChartData, double>(
                    dataSource: chartData,
                    enableTooltip: true,
                    xValueMapper: (ChartData sales, _) => sales.x,
                    yValueMapper: (ChartData sales, _) => sales.y2),
                StackedAreaSeries<ChartData, double>(
                    enableTooltip: true,
                    dataSource: chartData,
                    xValueMapper: (ChartData sales, _) => sales.x,
                    yValueMapper: (ChartData sales, _) => sales.y3),
                StackedLineSeries<ChartData, double>(
                    dataSource: chartData,
                    xValueMapper: (ChartData sales, _) => sales.x,
                    yValueMapper: (ChartData sales, _) => sales.y4)
              ])
        ],
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}

class ChartData {
  double x;
  double y1;
  double y2;
  double y3;
  double y4;

  ChartData({this.x, this.y1, this.y2, this.y3, this.y4 = 1});
}

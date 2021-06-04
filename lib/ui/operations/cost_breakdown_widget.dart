import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/contants/ui_contants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CostBreakdownWidget extends StatefulWidget {
  static const ROUTE_NAME = 'CostBreakdownWidget';
  @override
  _CostBreakdownWidgetState createState() => _CostBreakdownWidgetState();
}

class _CostBreakdownWidgetState extends State<CostBreakdownWidget> {
  static const TAG = 'CostBreakdownWidget';
  var chartData = [
    ChartData(x: '0', y1: 1.0, y2: 2.0, y3: 3.0),
    ChartData(x: '1', y1: 1.5, y2: 2.5, y3: 3.5),
    ChartData(x: '2', y1: 1.9, y2: 2.9, y3: 3.9),
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
              'Cost Breakdown',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: ColorContants.grey1,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          SfCircularChart(
              tooltipBehavior: _tooltipBehavior,
              legend: Legend(isVisible: true,position:LegendPosition.bottom),
              series: <CircularSeries>[
                PieSeries<ChartData, String>(
                    dataSource: chartData,
                    xValueMapper: (ChartData sales, _) => sales.x,
                    yValueMapper: (ChartData sales, _) => sales.y1)
              ])
        ],
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}

class ChartData {
  String x;
  double y1;
  double y2;
  double y3;
  double y4;

  ChartData({this.x, this.y1, this.y2, this.y3, this.y4 = 1});
}
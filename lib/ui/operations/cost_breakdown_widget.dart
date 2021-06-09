import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/contants/ui_contants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CostBreakdownWidget extends StatefulWidget {
  static const ROUTE_NAME = 'CostBreakdownWidget';
  final onClick;

  CostBreakdownWidget({this.onClick});

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
    return GestureDetector(
      onTap: () {
        if (widget.onClick != null) {
          widget.onClick();
        }
      },
      child: Container(
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
        child: Stack(
          children: [
            SfCircularChart(
                title: ChartTitle(
                    text: "Cost Breakdown",
                    textStyle: Theme.of(context).textTheme.bodyText1,
                    alignment: ChartAlignment.near),
                tooltipBehavior: _tooltipBehavior,
                legend:
                    Legend(isVisible: true, position: LegendPosition.bottom),
                series: <CircularSeries>[
                  PieSeries<ChartData, String>(
                      dataSource: chartData,
                      xValueMapper: (ChartData sales, _) => sales.x,
                      yValueMapper: (ChartData sales, _) => sales.y1)
                ]),
            Align(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.zoom_out_map_sharp,
                  size: 18,
                ),
              ),
              alignment: Alignment.topRight,
            )
          ],
        ),
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
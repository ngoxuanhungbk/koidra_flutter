import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/contants/ui_contants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProfitWidget extends StatefulWidget {
  final onClick;
  final bool isZoom;
  final bool isShowDetail;

  ProfitWidget({this.isZoom, this.isShowDetail, this.onClick});

  static const ROUTE_NAME = 'ProfitWidget';

  @override
  _ProfitWidgetState createState() => _ProfitWidgetState();
}

class _ProfitWidgetState extends State<ProfitWidget> {
  static const TAG = 'ProfitWidget';
  var chartData = [
    ChartData(x: 0, y1: 1.0, y2: 2.0, y3: 3.0),
    ChartData(x: 1, y1: 1.5, y2: 2.5, y3: 3.5),
    ChartData(x: 2, y1: 1.9, y2: 2.9, y3: 3.9),
    ChartData(x: 3, y1: 1.9, y2: 2.9, y3: 3.9),
    ChartData(x: 4, y1: 1.9, y2: 2.9, y3: 3.9),
    ChartData(x: 5, y1: 1.9, y2: 2.9, y3: 3.9)
  ];
  TooltipBehavior _tooltipBehavior;
  ZoomPanBehavior _zoomPanBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);

    _zoomPanBehavior = ZoomPanBehavior(
      enablePinching: widget.isZoom ? true : false,
      zoomMode: ZoomMode.xy,
      enablePanning: widget.isZoom ? true : false,
    );
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
              SfCartesianChart(
                  zoomPanBehavior: _zoomPanBehavior,
                  title: ChartTitle(
                      text: "Operating Profit",
                      textStyle: Theme.of(context).textTheme.bodyText1,
                      alignment: ChartAlignment.near),
                  tooltipBehavior: _tooltipBehavior,
                  legend:
                      Legend(isVisible: true, position: LegendPosition.bottom),
                  primaryXAxis: NumericAxis(),
                  series: <ChartSeries>[
                    StackedLineSeries<ChartData, double>(
                        dataSource: chartData,
                        xValueMapper: (ChartData sales, _) => sales.x,
                        yValueMapper: (ChartData sales, _) => sales.y4)
                  ]),
              Align(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      if (widget.onClick != null && widget.isShowDetail) {
                        widget.onClick();
                      } else {
                        Navigator.pop(context);
                      }
                    },
                    child: Icon(
                      widget.isShowDetail
                          ? Icons.zoom_out_map_sharp
                          : Icons.close,
                      size: 18,
                    ),
                  ),
                ),
                alignment: Alignment.topRight,
              )
            ],
          )),
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

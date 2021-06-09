import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FruitGrowthWidget extends StatefulWidget {
  static const ROUTE_NAME = 'FruitGrowthWidget';

  final onClick;
  final bool isZoom;
  final bool isShowDetail;

  FruitGrowthWidget({this.isZoom, this.isShowDetail,this.onClick});

  @override
  _FruitGrowthWidgetState createState() => _FruitGrowthWidgetState();
}

class _FruitGrowthWidgetState extends State<FruitGrowthWidget> {
  ZoomPanBehavior _zoomPanBehavior;

  @override
  void initState() {
    // TODO: implement initState

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
          margin: EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
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
              _buildDefaultSplineChart(),
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

  /// Returns the defaul spline chart.
  SfCartesianChart _buildDefaultSplineChart() {
    return SfCartesianChart(
        zoomPanBehavior: _zoomPanBehavior,
        title: ChartTitle(
            text: 'Fruit Growth',
            alignment: ChartAlignment.near,
            textStyle: Theme
                .of(context)
                .textTheme
                .bodyText1),
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(
            title: AxisTitle(
                text: '(Day)',
                textStyle:
                Theme
                    .of(context)
                    .textTheme
                    .caption
                    .copyWith(fontSize: 9))),
        axes: <ChartAxis>[
          NumericAxis(
              name: 'yAxis',
              opposedPosition: true,
              title: AxisTitle(
                  text: '(cm/week)',
                  textStyle: Theme
                      .of(context)
                      .textTheme
                      .caption
                      .copyWith(fontSize: 9)))
        ],
        series: <ChartSeries>[
          SplineSeries<SalesData, String>(
              markerSettings: MarkerSettings(isVisible: false),
              dataSource: [
                SalesData('Jan', 35, 1),
                SalesData('Feb', 28, 2),
                SalesData('Mar', 34, 3),
                SalesData('Apr', 32, 4),
                SalesData('May', 40, 5)
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales),
          SplineSeries<SalesData, String>(
              markerSettings: MarkerSettings(isVisible: false),
              dataSource: [
                SalesData('Jan', 15, 1),
                SalesData('Feb', 11, 1),
                SalesData('Mar', 14, 3),
                SalesData('Apr', 12, 4),
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.numeric,
              xAxisName: 'xAxis',
              yAxisName: 'yAxis')
        ]);
  }
}

class SalesData {
  var year;
  var sales;
  var numeric;

  SalesData(this.year, this.sales, this.numeric);
}

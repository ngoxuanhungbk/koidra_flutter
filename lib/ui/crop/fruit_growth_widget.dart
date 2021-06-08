import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FruitGrowthWidget extends StatefulWidget {
  static const ROUTE_NAME = 'FruitGrowthWidget';

  @override
  _FruitGrowthWidgetState createState() => _FruitGrowthWidgetState();
}

class _FruitGrowthWidgetState extends State<FruitGrowthWidget> {
  final List<ChartSampleData> chartData = <ChartSampleData>[
    ChartSampleData(
        x: 'Jan', y: 43, secondSeriesYValue: 37, thirdSeriesYValue: 41),
    ChartSampleData(
        x: 'Feb', y: 45, secondSeriesYValue: 37, thirdSeriesYValue: 45),
    ChartSampleData(
        x: 'Mar', y: 50, secondSeriesYValue: 39, thirdSeriesYValue: 48),
    ChartSampleData(
        x: 'Apr', y: 55, secondSeriesYValue: 43, thirdSeriesYValue: 52),
    ChartSampleData(
        x: 'May', y: 63, secondSeriesYValue: 48, thirdSeriesYValue: 57),
    ChartSampleData(
        x: 'Jun', y: 68, secondSeriesYValue: 54, thirdSeriesYValue: 61),
    ChartSampleData(
        x: 'Jul', y: 72, secondSeriesYValue: 57, thirdSeriesYValue: 66),
    ChartSampleData(
        x: 'Aug', y: 70, secondSeriesYValue: 57, thirdSeriesYValue: 66),
    ChartSampleData(
        x: 'Sep', y: 66, secondSeriesYValue: 54, thirdSeriesYValue: 63),
    ChartSampleData(
        x: 'Oct', y: 57, secondSeriesYValue: 48, thirdSeriesYValue: 55),
    ChartSampleData(
        x: 'Nov', y: 50, secondSeriesYValue: 43, thirdSeriesYValue: 50),
    ChartSampleData(
        x: 'Dec', y: 45, secondSeriesYValue: 37, thirdSeriesYValue: 45)
  ];
  @override
  Widget build(BuildContext context) {
    return _buildDefaultSplineChart();
  }


  /// Returns the defaul spline chart.
  SfCartesianChart _buildDefaultSplineChart() {
    // return SfCartesianChart(
    //   plotAreaBorderWidth: 0,
    //   title: ChartTitle(text: 'Average high/low temperature of London'),
    //   legend: Legend(isVisible: true),
    //   primaryXAxis: CategoryAxis(
    //       majorGridLines: MajorGridLines(width: 0),
    //       labelPlacement: LabelPlacement.onTicks),
    //   primaryYAxis: NumericAxis(
    //       minimum: 30,
    //       maximum: 100,
    //       axisLine: AxisLine(width: 0),
    //       edgeLabelPlacement: EdgeLabelPlacement.shift,
    //       labelFormat: '{value}',
    //       majorTickLines: MajorTickLines(size: 0)),
    //
    //   series: _getDefaultSplineSeries(),
    //   tooltipBehavior: TooltipBehavior(enable: true),
    // );
    return SfCartesianChart(
        primaryXAxis: CategoryAxis(
            title: AxisTitle(text: 'Primary X Axis')
        ),
        primaryYAxis: NumericAxis(
            title: AxisTitle(
                text: 'Primary Y Axis'
            )
        ),
        // adding multiple axis
        axes: <ChartAxis>[
          NumericAxis(
              name: 'xAxis',
              opposedPosition: true,
              interval:1,
              minimum: 1,
              maximum: 5,
              title: AxisTitle(
                  text: 'Secondary X Axis'
              )
          ),
          NumericAxis(
              name: 'yAxis',
              opposedPosition: true,
              title: AxisTitle(
                  text: 'Secondary Y Axis'
              )
          )
        ],
        series: <ChartSeries>[
          LineSeries<SalesData, String>(
              dataSource: [
                SalesData('Jan', 35, 1),
                SalesData('Feb', 28, 2),
                SalesData('Mar', 34, 3),
                SalesData('Apr', 32, 4),
                SalesData('May', 40, 5)
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales
          ),
          LineSeries<SalesData, int>(
              dataSource: [
                SalesData('Jan', 15, 1),
                SalesData('Feb', 11, 1),
                SalesData('Mar', 14, 3),
                SalesData('Apr', 12, 4),
              ],
              xValueMapper: (SalesData sales, _) => sales.numeric,
              yValueMapper: (SalesData sales, _) => sales.sales,
              xAxisName: 'xAxis',
              yAxisName: 'yAxis'
          )
        ]
    );
  }

  /// Returns the list of chart series which need to render on the spline chart.
  List<SplineSeries<ChartSampleData, String>> _getDefaultSplineSeries() {
    final List<ChartSampleData> chartData = <ChartSampleData>[
      ChartSampleData(
          x: 'Jan', y: 43, secondSeriesYValue: 37, thirdSeriesYValue: 41),
      ChartSampleData(
          x: 'Feb', y: 45, secondSeriesYValue: 37, thirdSeriesYValue: 45),
      ChartSampleData(
          x: 'Mar', y: 50, secondSeriesYValue: 39, thirdSeriesYValue: 48),
      ChartSampleData(
          x: 'Apr', y: 55, secondSeriesYValue: 43, thirdSeriesYValue: 52),
      ChartSampleData(
          x: 'May', y: 63, secondSeriesYValue: 48, thirdSeriesYValue: 57),
      ChartSampleData(
          x: 'Jun', y: 68, secondSeriesYValue: 54, thirdSeriesYValue: 61),
      ChartSampleData(
          x: 'Jul', y: 72, secondSeriesYValue: 57, thirdSeriesYValue: 66),
      ChartSampleData(
          x: 'Aug', y: 70, secondSeriesYValue: 57, thirdSeriesYValue: 66),
      ChartSampleData(
          x: 'Sep', y: 66, secondSeriesYValue: 54, thirdSeriesYValue: 63),
      ChartSampleData(
          x: 'Oct', y: 57, secondSeriesYValue: 48, thirdSeriesYValue: 55),
      ChartSampleData(
          x: 'Nov', y: 50, secondSeriesYValue: 43, thirdSeriesYValue: 50),
      ChartSampleData(
          x: 'Dec', y: 45, secondSeriesYValue: 37, thirdSeriesYValue: 45)
    ];
    return <SplineSeries<ChartSampleData, String>>[
      SplineSeries<ChartSampleData, String>(
          dataSource: chartData,
          xValueMapper: (ChartSampleData sales, _) => sales.x,
          yValueMapper: (ChartSampleData sales, _) => sales.y,
          markerSettings: MarkerSettings(isVisible: false),
          name:"low",
          legendIconType: LegendIconType.verticalLine,
          isVisibleInLegend: true),
      SplineSeries<ChartSampleData, String>(
        dataSource: chartData,
        isVisibleInLegend: false,
        markerSettings: MarkerSettings(isVisible: false),
        xValueMapper: (ChartSampleData sales, _) => sales.x,
        yValueMapper: (ChartSampleData sales, _) => sales.secondSeriesYValue,
      )
    ];
  }
}

class SalesData {
  var year;
  var sales;
  var numeric;

  SalesData(this.year, this.sales, this.numeric);
}

class ChartSampleData {
  var x;
  var y;
  var secondSeriesYValue;
  var thirdSeriesYValue;

  ChartSampleData(
      {this.x, this.y, this.secondSeriesYValue, this.thirdSeriesYValue});
}

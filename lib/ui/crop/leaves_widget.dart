import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LeavesWidget extends StatefulWidget {
  static const ROUTE_NAME = 'LeavesWidget';

  final onClick;

  LeavesWidget({this.onClick});

  @override
  _LeavesWidgetState createState() => _LeavesWidgetState();
}

class _LeavesWidgetState extends State<LeavesWidget> {
  static const TAG = 'LeavesWidget';


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onClick();
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
              _buildChart(),
              Align(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.zoom_out_map_sharp, size: 18,),
              ), alignment: Alignment.topRight,)
            ],
          )),
    );
  }

  final List<ChartSampleDataLeaves> chartData = <ChartSampleDataLeaves>[
    ChartSampleDataLeaves(x: 'China', y: 0.541, y2: 10),
    ChartSampleDataLeaves(x: 'Brazil', y: 0.818, y2: 15),
    ChartSampleDataLeaves(x: 'Bolivia', y: 1.51, y2: 20),
    ChartSampleDataLeaves(x: 'Mexico', y: 1.302, y2: 25),
    ChartSampleDataLeaves(x: 'Egypt', y: 2.017, y2: 30),
    ChartSampleDataLeaves(x: 'Mongolia', y: 1.683, y2: 40),
  ];

  /// Get the cartesian chart with histogram series
  SfCartesianChart _buildChart() {
    return SfCartesianChart(
        title: ChartTitle(
            text: 'Leaves',
            alignment: ChartAlignment.near,
            textStyle: Theme.of(context).textTheme.bodyText1),
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(
            title: AxisTitle(
                text: '(Leaves)',
                textStyle:
                    Theme.of(context).textTheme.caption.copyWith(fontSize: 9))),
        axes: <ChartAxis>[
          NumericAxis(
              name: 'yAxis',
              opposedPosition: true,
              title: AxisTitle(
                  text: '(Leaves per week)',
                  textStyle: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontSize: 9)))
        ],
        series: [
          ColumnSeries<ChartSampleDataLeaves, String>(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff2C8D7C),
            dataSource: chartData,
            width: 0.15,
            enableTooltip: false,
            xValueMapper: (ChartSampleDataLeaves sales, _) => sales.x,
            yValueMapper: (ChartSampleDataLeaves sales, _) => sales.y,
            dataLabelSettings: DataLabelSettings(
                isVisible: false, textStyle: const TextStyle(fontSize: 10)),

          ),

          SplineSeries<ChartSampleDataLeaves, String>(
              markerSettings: MarkerSettings(isVisible: false),
              dataSource:chartData,
              xValueMapper: (ChartSampleDataLeaves sales, _) => sales.x,
              yValueMapper: (ChartSampleDataLeaves sales, _) => sales.y2,
              xAxisName: 'xAxis',
              yAxisName: 'yAxis'),
        ]);
  }
}

class ChartSampleDataLeaves {
  var x, y, y2;

  ChartSampleDataLeaves({this.x, this.y, this.y2});
}

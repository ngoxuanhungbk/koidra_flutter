import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Harvest extends StatefulWidget {
  final onClick;
  static const ROUTE_NAME = 'Harvest';
  final bool isZoom;
  final bool isShowDetail;

  Harvest({this.isZoom,this.isShowDetail,this.onClick});

  @override
  _HarvestState createState() => _HarvestState();
}

class _HarvestState extends State<Harvest> {
  static const TAG = 'Harvest';
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
      onTap: (){
        if(widget.onClick != null){
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
              _buildChart(),
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

  final List<ChartSampleDataHarvest> chartData = <ChartSampleDataHarvest>[
    ChartSampleDataHarvest(x: 'China', y: 0.541, y2: 10),
    ChartSampleDataHarvest(x: 'Brazil', y: 0.818, y2: 15),
    ChartSampleDataHarvest(x: 'Bolivia', y: 1.51, y2: 20),
    ChartSampleDataHarvest(x: 'Mexico', y: 1.302, y2: 25),
    ChartSampleDataHarvest(x: 'Egypt', y: 2.017, y2: 30),
    ChartSampleDataHarvest(x: 'Mongolia', y: 1.683, y2: 40),
  ];

  /// Get the cartesian chart with histogram series
  SfCartesianChart _buildChart() {
    return SfCartesianChart(

        zoomPanBehavior:_zoomPanBehavior,
        title: ChartTitle(
            text: 'Harvest',
            alignment: ChartAlignment.near,
            textStyle: Theme.of(context).textTheme.bodyText1),
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(
            title: AxisTitle(
                text: '(Day)',
                textStyle:
                Theme.of(context).textTheme.caption.copyWith(fontSize: 9))),
        axes: <ChartAxis>[
          NumericAxis(
              name: 'yAxis',
              opposedPosition: true,
              title: AxisTitle(
                  text: '(Kilogam)',
                  textStyle: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontSize: 9)))
        ],
        tooltipBehavior: TooltipBehavior(enable: true),
        series: [
          ColumnSeries<ChartSampleDataHarvest, String>(
            isTrackVisible: true,
            trackColor: const Color(0xff1D3641),
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff2C8D7C),
            dataSource: chartData,
            width: 0.15,
            enableTooltip: true,
            xValueMapper: (ChartSampleDataHarvest sales, _) => sales.x,
            yValueMapper: (ChartSampleDataHarvest sales, _) => sales.y,
            dataLabelSettings: DataLabelSettings(
                isVisible: false, textStyle: const TextStyle(fontSize: 10)),

          ),

          SplineSeries<ChartSampleDataHarvest, String>(
              markerSettings: MarkerSettings(isVisible: false),
              enableTooltip: true,
              dataSource:chartData,
              xValueMapper: (ChartSampleDataHarvest sales, _) => sales.x,
              yValueMapper: (ChartSampleDataHarvest sales, _) => sales.y2,
              xAxisName: 'xAxis',
              yAxisName: 'yAxis'),

        ]);
  }
}


class ChartSampleDataHarvest {
  var x, y, y2;

  ChartSampleDataHarvest({this.x, this.y, this.y2});
}

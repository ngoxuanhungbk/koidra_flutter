import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_krop/application.dart';
import 'package:flutter_krop/locator.dart';
import 'package:flutter_krop/ui/auth/auth_page.dart';
import 'package:flutter_krop/ui/home/home_page.dart';
import 'package:flutter_krop/ui/main/main_page.dart';
import 'package:flutter_krop/ui/splash/splash_page.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'bloc/auth/AuthBloc.dart';

void main() async{
  await setupLocator();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => AuthBloc()),
    ],
    child: Application(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  static const ROUTE_NAME = 'Main';

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  static const TAG = 'Main';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      BlocBuilder<AuthBloc, AuthNavigationState>(builder: (context, state) {
        print(state);
        if (state is UnAuthorized) {
          return AuthPage();
        }
        if (state is Authorized) {
          return HomePage();
        }
        return SplashPage();
      }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var chartData = [
    ChartData(x: 0, y1: 1.0, y2: 2.0, y3: 3.0),
    ChartData(x: 1, y1: 1.5, y2: 2.5, y3: 3.5),
    ChartData(x: 2, y1: 1.9, y2: 2.9, y3: 3.9)
  ];
  TooltipBehavior _tooltipBehavior;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
            height: 400,
            child: SfCartesianChart(
              tooltipBehavior: _tooltipBehavior,
                legend: Legend(isVisible: true),
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
                      yValueMapper: (ChartData sales, _) => sales.y4
                  )
                ])),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ChartData {
  double x;
  double y1;
  double y2;
  double y3;
  double y4;

  ChartData({this.x, this.y1, this.y2, this.y3,this.y4 = 1});
}

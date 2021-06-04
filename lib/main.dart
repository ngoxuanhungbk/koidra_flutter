import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_krop/locator.dart';
import 'package:flutter_krop/ui/auth/auth_page.dart';
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
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
          return MainPage();
        }
        return SplashPage();
      }),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
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

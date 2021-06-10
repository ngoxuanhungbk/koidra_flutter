import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_krop/application.dart';
import 'package:flutter_krop/bloc/blocs.dart';
import 'package:flutter_krop/bloc/setting/season/season_bloc.dart';
import 'package:flutter_krop/data/datasource/mock/mock_datasource.dart';
import 'package:flutter_krop/data/repository/app_repository.dart';
import 'package:flutter_krop/data/repository/app_repository_impl.dart';
import 'package:flutter_krop/locator.dart';
import 'package:flutter_krop/ui/auth/auth_page.dart';
import 'package:flutter_krop/ui/home/home_page.dart';
import 'package:flutter_krop/ui/splash/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'bloc/auth/AuthBloc.dart';

void main() async{
  AppRepository appRepository = AppRepositoryImpl(MockDatasource());
  await setupLocator();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => AuthBloc()),
      BlocProvider(create: (context) {
        final cubit =  SeasonBloc(appRepository);
        return cubit;
      }),
      BlocProvider(create: (context) {
        final cubit =  SiteAndZoneBloc(appRepository);
        return cubit;
      }),
    ],
    child: Application(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        accentColor: Colors.black,
        accentColorBrightness: Brightness.dark,
        toggleableActiveColor: Colors.red,
        bottomAppBarColor: Colors.white,
        primaryColorBrightness: Brightness.light,
        primaryColorDark: Colors.black87,
        primaryIconTheme: IconThemeData(
            color: Colors.black
        ),
        brightness: Brightness.light,
        cardColor: Colors.white,
        backgroundColor: Colors.grey[200],
        dialogBackgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.light(
            onPrimary: Colors.black
        ),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Color(0xff3f414e),
          inactiveTrackColor: Color(0xffa0a3b1),
          trackHeight: 0.5,
          thumbColor: Color(0xff3f414e),
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
          overlayColor: Colors.purple.withAlpha(32),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
        ),
        appBarTheme: AppBarTheme(
            color: Color(0xfff7f9fa),
            textTheme: TextTheme(
                title: TextStyle(
                    color: Color(0xff293845),
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                )
            ),
            brightness: Brightness.light,
            elevation: 0
        ),
        textTheme: GoogleFonts.latoTextTheme(ThemeData.light().textTheme.copyWith(
            button: ThemeData.light().textTheme.button.copyWith(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              // da dung
            ),
            caption: ThemeData.light().textTheme.caption.copyWith(
              color: Color(0xff9586a8),
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
            headline6: ThemeData.light().textTheme.headline6.copyWith(
              color: Color(0xff4c5964),
              fontSize: 18,
              //used
            ),

            headline5: ThemeData.light().textTheme.headline5.copyWith(
              color: Color(0xff2d0c57),
              fontSize: 22,
              fontWeight: FontWeight.bold,

            ),
            headline4: ThemeData.light().textTheme.headline4.copyWith(
              color: Color(0xff2d0c57),
              fontSize: 34,
              fontWeight: FontWeight.bold,

            ),
            headline3: ThemeData.light().textTheme.bodyText2.copyWith(
              color: Color(0xff2d0c57),
              fontSize: 32,
              fontWeight: FontWeight.bold,

            ),
            headline2: ThemeData.light().textTheme.bodyText2.copyWith(
              color: Color(0xff9586a8),
              fontSize: 24,
              fontWeight: FontWeight.normal,


            ),
            headline1: ThemeData.light().textTheme.headline1.copyWith(
              color: Color(0xff2d0c57),
              fontSize: 30,
              fontWeight: FontWeight.bold,


            ),
            subtitle1:ThemeData.light().textTheme.subtitle1.copyWith(
              color: Color(0xff788896),
              fontSize: 16,
              fontWeight: FontWeight.bold,
              //da dung

            ),

            subtitle2:  ThemeData.light().textTheme.subtitle2.copyWith(
              color: Color(0xff4b5c6b),
              fontSize: 15,
              fontWeight: FontWeight.bold,
              //da dung
            ),

            bodyText2:  ThemeData.light().textTheme.bodyText2.copyWith(
              color: Color(0xffffffff),
              fontSize: 15,
              //da dung


            ),
            bodyText1:  ThemeData.light().textTheme.bodyText1.copyWith(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold
                //da dung
            )
        )),
        inputDecorationTheme: InputDecorationTheme(
          prefixStyle: TextStyle(color: Colors.transparent),
          hintStyle:
          TextStyle(color: Color(0xffccced7), fontSize: 16),
          labelStyle:
          TextStyle(color: Color(0xff363a45), fontSize: 12, fontWeight: FontWeight.normal),
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixStyle: TextStyle(color: Colors.black),
          errorStyle: TextStyle(color: Colors.red, fontSize: 12),
          contentPadding: EdgeInsets.symmetric( vertical: 12, horizontal: 16),
          filled: true,
          hoverColor: Colors.black,
          focusColor: Colors.black,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
            BorderSide(color: Color(0xff8d93a5), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
            BorderSide(color: Color(0xff8d93a5), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
            BorderSide(color: Colors.black, width: 1),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
            BorderSide(color: Color(0xffccced7), width: 1),
          ),
        ),
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

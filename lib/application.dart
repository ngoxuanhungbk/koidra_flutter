import 'package:flutter/material.dart';
import 'package:flutter_krop/main.dart';
import 'package:flutter_krop/ui/home/home_page.dart';

class Application extends StatefulWidget {
  static const ROUTE_NAME = 'Application';

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  static const TAG = 'Application';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
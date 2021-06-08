import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  static const ROUTE_NAME = 'MorePage';

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  static const TAG = 'MorePage';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("More page"),
    );
  }
}

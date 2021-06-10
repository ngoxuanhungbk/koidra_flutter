import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class MyErrorWidget extends StatelessWidget {
  final mes;

  MyErrorWidget(this.mes);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      child: Text(mes),
    );
  }
}

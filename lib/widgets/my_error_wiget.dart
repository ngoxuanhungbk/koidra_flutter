import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class MyErrorWiget extends StatelessWidget {
  final String mes;

  MyErrorWiget(this.mes);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        mes,
        style:
            Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.red),
      ),
    );
  }
}

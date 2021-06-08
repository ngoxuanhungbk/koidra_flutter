import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/gen/assets.gen.dart';

import 'light_sensor_widget.dart';

class AppbarWidget extends StatefulWidget {
  static const ROUTE_NAME = 'AppbarWidget';

  @override
  _AppbarWidgetState createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  static const TAG = 'AppbarWidget';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                  margin: EdgeInsets.only(right: 5),
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xffB5C0CB), width: 2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Zone2",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        padding: EdgeInsets.all(6),
                        child: Image.asset(
                          "assets/images/ic_arrows_up_and_down.png",

                        ),
                      )
                    ],
                  ))),
          Expanded(
              flex: 2,
              child: Container(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xffB5C0CB), width: 2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "01/06/2020 - 30/12/2020",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        padding: EdgeInsets.all(6),
                        child: Image.asset(
                          "assets/images/ic_arrows_up_and_down.png",

                        ),
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}

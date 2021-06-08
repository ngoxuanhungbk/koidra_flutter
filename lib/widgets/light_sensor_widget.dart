import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/asset.gen.dart';

class LightSensorWidget extends StatefulWidget {
  static const ROUTE_NAME = 'LightSensorWidget';

  @override
  _LightSensorWidgetState createState() => _LightSensorWidgetState();
}

class _LightSensorWidgetState extends State<LightSensorWidget> {
  static const TAG = 'LightSensorWidget';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Color(0xffD7E0E9),
      padding: EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
      child: Row(
        children: [
          Expanded(
            flex: 1,
              child: Row(
            children: [
              Container(
                width: 24,
                height: 24,
                padding: EdgeInsets.all(3),
                child: Image.asset(
                  Asset.icClimateNow.path,
                ),
              ),
              Text(
                "Light Sensor",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          )),
          Expanded(flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "237 μmol/m2/s",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Color(0xff657584)),
              ),
              Container(
                width: 24,
                height: 24,
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  "assets/images/ic_resize.png",
                
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
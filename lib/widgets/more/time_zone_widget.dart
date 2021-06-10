import 'package:flutter/material.dart';
import 'package:flutter_krop/widgets/formfields/setting_text_formfield.dart';

class TimeZoneWidget extends StatefulWidget {
  static const ROUTE_NAME = 'TimeZoneWidget';
  @override
  _TimeZoneWidgetState createState() => _TimeZoneWidgetState();
}

class _TimeZoneWidgetState extends State<TimeZoneWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: (){},
              child: Container(
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xff8d93a5))
                ),
                child: Row(
                  children: [
                    Text('CET', style: TextStyle(color: Color(0xff363a45), fontSize: 16),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_drop_down_outlined),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
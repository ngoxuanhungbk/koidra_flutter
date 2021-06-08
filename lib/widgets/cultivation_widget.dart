import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/widgets/formfields/setting_date_formfield.dart';
import 'package:flutter_krop/widgets/formfields/setting_text_formfield.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CultivationWidget extends StatefulWidget {
  static const ROUTE_NAME = 'CultivationWidget';
  @override
  _CultivationWidgetState createState() => _CultivationWidgetState();
}

class _CultivationWidgetState extends State<CultivationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SettingTextFormfied(hintText: 'Cucumber', labelText: 'Crop'),
            SizedBox(height: 15,),
            SettingTextFormfied(hintText: 'Cucumber', labelText: 'Crop'),
            SizedBox(height: 15,),
            SettingTextFormfied(hintText: 'Cucumber', labelText: 'Crop'),
            SizedBox(height: 15,),
            SettingDateFormfield(labelText: 'Start Date',callbackDate: (date){}),
            SizedBox(height: 15,),
            SettingDateFormfield(labelText: 'End Date',callbackDate: (date){}),
            SizedBox(height: 15,),
            SettingDateFormfield(labelText: 'Topping Date',callbackDate: (date){}),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
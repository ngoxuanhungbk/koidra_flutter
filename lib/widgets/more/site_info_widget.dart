import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/widgets/formfields/setting_text_formfield.dart';

class SiteInfoWidget extends StatefulWidget {
  static const ROUTE_NAME = 'SiteInfoWidget';
  final ValueChanged<String> callbackName;
  final ValueChanged<String> callbackType;
  final ValueChanged<String> callbackAddress;
  final ValueChanged<String> callbackCurrency;
  final ValueChanged<double> callbackLightTransmissionRatio;
  final ValueChanged<double> callbackLatitude;
  final ValueChanged<double> callbackLongtitude;

  SiteInfoWidget(
      this.callbackName,
      this.callbackType,
      this.callbackAddress,
      this.callbackCurrency,
      this.callbackLightTransmissionRatio,
      this.callbackLatitude,
      this.callbackLongtitude);

  @override
  _SiteInfoWidgetState createState() => _SiteInfoWidgetState();
}

class _SiteInfoWidgetState extends State<SiteInfoWidget> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SettingTextFormfied(hintText: 'Name', labelText: 'Name',
              onSaved: (value){
                widget.callbackName(value);
              },),
            SizedBox(height: 15,),
            SettingTextFormfied(hintText: 'Type', labelText: 'Type',
              onSaved: (value){
                widget.callbackType(value);
              },),
            SizedBox(height: 15,),
            SettingTextFormfied(hintText: 'Address', labelText: 'Address',
              onSaved: (value){
                widget.callbackAddress(value);
              },),
            SizedBox(height: 15,),
            SettingTextFormfied(hintText: 'Currency', labelText: 'Currency',
              onSaved: (value){
                widget.callbackCurrency(value);
              },),
            SizedBox(height: 15,),
            SettingTextFormfied(hintText: 'Light Transmission Ratio', labelText: 'Light Transmission Ratio',
              onSaved: (value){
                widget.callbackLightTransmissionRatio(double.tryParse(value));
              },),
            SizedBox(height: 15,),
            SettingTextFormfied(hintText: 'Latitude', labelText: 'Latitude',
              onSaved: (value){
                widget.callbackLatitude(double.tryParse(value));
              },),
            SizedBox(height: 15,),
            SettingTextFormfied(hintText: 'Longtitude', labelText: 'Longtitude',
              onSaved: (value){
                widget.callbackLongtitude(double.tryParse(value));
              },),
            SizedBox(height: 25,)
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
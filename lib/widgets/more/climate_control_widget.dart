import 'package:flutter/material.dart';
import 'package:flutter_krop/widgets/formfields/setting_text_formfield.dart';

class ClimateControlWidget extends StatefulWidget {
  static const ROUTE_NAME = 'ClimateControlWidget';
  final ValueChanged<double> callbackDailyPhotoPeriod;
  final ValueChanged<int> callbackMaximumAllowedCO2Setpoint;
  final ValueChanged<int> callbackMaximumAllowedHeatingSetpoint;
  final ValueChanged<int> callbackMinimumPipeTemperature;
  final ValueChanged<int> callbackPARToTemperature;
  final ValueChanged<int> callbackMaximumAllowedVentSetpoint;
  final ValueChanged<double> callbackTargetDrainRatio;

  ClimateControlWidget(
      this.callbackDailyPhotoPeriod,
      this.callbackMaximumAllowedCO2Setpoint,
      this.callbackMaximumAllowedHeatingSetpoint,
      this.callbackMinimumPipeTemperature,
      this.callbackPARToTemperature,
      this.callbackMaximumAllowedVentSetpoint,
      this.callbackTargetDrainRatio);

  @override
  _ClimateControlWidgetState createState() => _ClimateControlWidgetState();
}

class _ClimateControlWidgetState extends State<ClimateControlWidget> with AutomaticKeepAliveClientMixin {
  bool autoSetting = false;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: autoSetting?Container(
          child: Column(
            children: [
              Container(
                height: 30,
                child: Row(children: [
                  Switch(value: autoSetting, onChanged: (value){
                    setState(() {
                      autoSetting = value;
                    });
                  }, activeColor: Colors.green,),
                  SizedBox(width: 10,),
                  Text('Enable Auto Settings', style: Theme.of(context).textTheme.headline6,)
                ],),
              ),
              SizedBox(height: 25,),
              SettingTextFormfied(hintText: 'Daily Photo Period', labelText: 'Daily Photo Period',
                onSaved: (value){
                  widget.callbackDailyPhotoPeriod(double.tryParse(value));
                },),
              SizedBox(height: 15,),
              SettingTextFormfied(hintText: 'Maximum allowed CO2 setpoint', labelText: 'Maximum allowed CO2 setpoint',
                onSaved: (value){
                  widget.callbackMaximumAllowedCO2Setpoint(int.tryParse(value));
                },),
              SizedBox(height: 15,),
              SettingTextFormfied(hintText: 'Maximum allowed heating setpoint', labelText: 'Maximum allowed heating setpoint',
                onSaved: (value){
                  widget.callbackMaximumAllowedHeatingSetpoint(int.tryParse(value));
                },),
              SizedBox(height: 15,),
              SettingTextFormfied(hintText: 'Minimum pipe temperature', labelText: 'Minimum pipe temperature',
                onSaved: (value){
                  widget.callbackMinimumPipeTemperature(int.tryParse(value));
                },),
              SizedBox(height: 15,),
              SettingTextFormfied(hintText: 'PAR to temperature increment', labelText: 'PAR to temperature increment',
                onSaved: (value){
                  widget.callbackPARToTemperature(int.tryParse(value));
                },),
              SizedBox(height: 15,),
              SettingTextFormfied(hintText: 'Maximum allowed vent setpoint', labelText: 'Maximum allowed vent setpoint',
                onSaved: (value){
                  widget.callbackMaximumAllowedVentSetpoint(int.tryParse(value));
                },),
              SizedBox(height: 15,),
              SettingTextFormfied(hintText: 'Target Drain Ratio', labelText: 'Target Drain Ratio',
                onSaved: (value){
                  widget.callbackTargetDrainRatio(double.tryParse(value));
                },),
              SizedBox(height: 25,)
            ],
          ),
        ):
        Row(children: [
          Switch(value: autoSetting, onChanged: (value){
            setState(() {
              autoSetting = value;
            });
          }),
          SizedBox(width: 10,),
          Text('Enable Auto Settings', style: Theme.of(context).textTheme.headline6,)
        ],),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
import 'package:flutter/material.dart';
import 'package:flutter_krop/widgets/formfields/setting_date_formfield.dart';
import 'package:flutter_krop/widgets/formfields/setting_text_formfield.dart';

class CultivationWidget extends StatefulWidget {
  static const ROUTE_NAME = 'CultivationWidget';
  final ValueChanged<String> callbackCrop;
  final ValueChanged<String> callbackCultivar;
  final ValueChanged<double> callbackStemDensity;
  final ValueChanged<DateTime> callbackStartDate;
  final ValueChanged<DateTime> callbackEndDate;
  final ValueChanged<DateTime> callbackToppingDate;

  CultivationWidget(
      this.callbackCrop,
      this.callbackCultivar,
      this.callbackStemDensity,
      this.callbackStartDate,
      this.callbackEndDate,
      this.callbackToppingDate);

  @override
  _CultivationWidgetState createState() => _CultivationWidgetState();
}

class _CultivationWidgetState extends State<CultivationWidget> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SettingTextFormfied(hintText: 'Cucumber', labelText: 'Crop',
                  onSaved: (value){
                    widget.callbackCrop(value);
                  },),
                  SizedBox(height: 15,),
                  SettingTextFormfied(hintText: 'Cucumber', labelText: 'Crop',
                    onSaved: (value){
                      widget.callbackCultivar(value);
                    },),
                  SizedBox(height: 15,),
                  SettingTextFormfied(hintText: 'Cucumber', labelText: 'Crop',
                    onSaved: (value){
                      widget.callbackStemDensity(double.tryParse(value));
                    },),
                  SizedBox(height: 15,),
                  SettingDateFormfield(labelText: 'Start Date',callbackDate: (date){},
                    onSaved: (value){
                      widget.callbackStartDate(value);
                    },),
                  SizedBox(height: 15,),
                  SettingDateFormfield(labelText: 'End Date',callbackDate: (date){},
                    onSaved: (value){
                      widget.callbackEndDate(value);
                    },),
                  SizedBox(height: 15,),
                  SettingDateFormfield(labelText: 'Topping Date',callbackDate: (date){},
                    onSaved: (value){
                      widget.callbackToppingDate(value);
                    },),
                  SizedBox(height: 15,),
                ],
              ),
            ),
          );

  }

  @override
  bool get wantKeepAlive => true;
}
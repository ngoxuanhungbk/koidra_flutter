import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../test_widget.dart';

class SettingDateFormfield extends FormField<DateTime> {
  SettingDateFormfield({
    Key key,
    DateTime initialValue,
    FormFieldSetter<DateTime> onSaved,
    FormFieldValidator<DateTime> validator,
    bool autoValidate = false,
    bool enabled = true,
    DateTime firstDate,
    DateTime lastDate,
    String date = '',
    ValueChanged<String> callbackDate,
    @required DateRangePickerSelectionMode dateRange,
    @required String labelText,
    bool checkColor = false
  }) : super(
      key: key,
      validator: validator,
      onSaved: onSaved,
      initialValue: initialValue = DateTime.now(),
      autovalidate: autoValidate,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      builder: (FormFieldState state) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(labelText, style: Theme.of(state.context).textTheme.subtitle2,),
              InkWell(
              child: InputDecorator(
              decoration: InputDecoration().applyDefaults(Theme.of(state.context).inputDecorationTheme).copyWith(
                fillColor: checkColor?Colors.white:Color(0xfff7f9fa),
                errorText: state.errorText,
              ),
              child: Row(
                children: [
                  Text(
                    date, style: TextStyle(color: Colors.black),
                  ),
                  new Spacer(),
                  Icon(Icons.calendar_today),
                ],
              ),
            ),
              onTap: ()  {
                showDialog(
                    context: state.context,
                    builder: (BuildContext context) {
                      return TestWidget( (date2){
                        state.setState(() {
                          date = date2;
                          callbackDate(date);
                        });
                      });
                    });

              },),]
          ),
        );
      });
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../calendar_dialog_widget.dart';

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
    DateTime date,
    ValueChanged<DateTime> callbackDate,
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
          child: InkWell(
            onTap: (){
                    showDialog(
                        context: state.context,
                        builder: (BuildContext context) {
                          return CalendarDialogWidget( (date2){
                            state.setState(() {
                              date = date2;
                              callbackDate(date);
                            });
                          });
                        });
            },
            child: Stack(
              children: [
                TextField(
                  style: TextStyle(color: Color(0xff363a45), fontSize: 16),
                  onChanged: (text) {
                    state.didChange(text);
                  },
                  decoration: InputDecoration(
                    hintText: date!=null?DateFormat('dd/MM/yyyy').format(date).toString():'',
                      floatingLabelBehavior: date!=null?FloatingLabelBehavior.always:
                      FloatingLabelBehavior.never,
                      labelText: labelText,
                      errorText: state.errorText,
                    hintStyle: TextStyle(color: Color(0xff363a45), fontSize: 16),
                    enabled: false
                  ),
                ),
                Positioned(
                  right: 20,
                    top: 12,
                    child: Icon(Icons.calendar_today))
              ],
            ),
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children:[
          //     Text(labelText, style: Theme.of(state.context).textTheme.subtitle2,),
          //     InkWell(
          //     child: InputDecorator(
          //     decoration: InputDecoration().applyDefaults(Theme.of(state.context).inputDecorationTheme).copyWith(
          //       errorText: state.errorText,
          //     ),
          //     child: Row(
          //       children: [
          //         Text(
          //           date!=null?DateFormat('dd/MM/yyyy').format(date).toString():'', style: TextStyle(color: Colors.black),
          //         ),
          //         new Spacer(),
          //         Icon(Icons.calendar_today),
          //       ],
          //     ),
          //   ),
          //     onTap: ()  {
          //       showDialog(
          //           context: state.context,
          //           builder: (BuildContext context) {
          //             return CalendarDialogWidget( (date2){
          //               state.setState(() {
          //                 date = date2;
          //                 callbackDate(date);
          //               });
          //             });
          //           });
          //
          //     },),]
          // ),
        );
      });
}

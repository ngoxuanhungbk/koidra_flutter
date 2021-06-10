import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CalendarDialogWidget extends StatefulWidget {

  final ValueChanged<DateTime> callbackDate;

  CalendarDialogWidget(this.callbackDate);

  @override
  CalendarDialogWidgetState createState() => CalendarDialogWidgetState();
}

class CalendarDialogWidgetState extends State<CalendarDialogWidget> {
  var time;
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
     if (args.value is DateTime) {
        time = args.value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
      Dialog(
        child: Container(
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                padding: EdgeInsets.only(left: 10),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.close),)],
                ),
              ),
              SizedBox(height: 30,),
              SfDateRangePicker(
              onSelectionChanged: _onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.single,
              initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(const Duration(days: 4)),
                  DateTime.now().add(const Duration(days: 3))),
            ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(right: 20),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          widget.callbackDate(time);
                          Navigator.pop(context);
                        });
                      }, child: Text('Save', style: Theme.of(context).textTheme.bodyText2,),
                  style: ElevatedButton.styleFrom(minimumSize: Size(100, 60),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),primary: Color(0xff6558f5)),)],
                ),
              )
            ]
          ),
        ),
      );
  }
}
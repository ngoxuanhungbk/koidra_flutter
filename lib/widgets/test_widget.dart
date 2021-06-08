import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';


/// My app class to display the date range picker
class TestWidget extends StatefulWidget {

  final ValueChanged<String> callbackDate;

  TestWidget(this.callbackDate);

  @override
  TestWidgetState createState() => TestWidgetState();
}

class TestWidgetState extends State<TestWidget> {
  String _selectedDate = '';
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
     if (args.value is DateTime) {
        _selectedDate = DateFormat('dd/MM/yyyy').format(args.value).toString();
        widget.callbackDate(_selectedDate);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
      Dialog(
        child: Container(
          height: 500,
          child: SfDateRangePicker(
            onSelectionChanged: _onSelectionChanged,
            selectionMode: DateRangePickerSelectionMode.single,
            initialSelectedRange: PickerDateRange(
                DateTime.now().subtract(const Duration(days: 4)),
                DateTime.now().add(const Duration(days: 3))),
          ),
        ),
      );
  }
}
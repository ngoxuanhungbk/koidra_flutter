import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateTimePickerWidget extends StatefulWidget {
  static const ROUTE_NAME = 'DateTimePickerWidget';
  final ValueChanged<String> callbackDate;

  DateTimePickerWidget(this.callbackDate);

  @override
  _DateTimePickerWidgetState createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  static const TAG = 'DateTimePickerWidget';
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
        widget.callbackDate(_range);
      } else if (args.value is DateTime) {
        _selectedDate = DateFormat('dd/MM/yyyy').format(args.value).toString();
        widget.callbackDate(_selectedDate);
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
        widget.callbackDate(_dateCount);
      } else {
        _rangeCount = args.value.length.toString();
        widget.callbackDate(_rangeCount);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 180,
      margin: EdgeInsets.all(10),
      child: SfDateRangePicker(
        onSelectionChanged: _onSelectionChanged,
        selectionMode: DateRangePickerSelectionMode.range,
        initialSelectedRange: PickerDateRange(
            DateTime.now().subtract(const Duration(days: 4)),
            DateTime.now().add(const Duration(days: 3))),
      ),
    );
  }
}

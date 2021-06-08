import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/ui/operations/cost_breakdown_widget.dart';
import 'package:flutter_krop/ui/operations/cost_income_widget.dart';
import 'package:flutter_krop/ui/operations/profit_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OperationsPage extends StatefulWidget {
  static const ROUTE_NAME = 'OperationsPage';

  @override
  _OperationsPageState createState() => _OperationsPageState();
}

class _OperationsPageState extends State<OperationsPage> {
  static const TAG = 'OperationsPage';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('OPERATIONS'),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: CostIncomeWidget()),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ProfitWidget(),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CostBreakdownWidget(),
            ),
            SizedBox(
              height: 16,
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}

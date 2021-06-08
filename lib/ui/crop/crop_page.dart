import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/ui/crop/leaves_widget.dart';
import 'package:flutter_krop/utils/show_dialog_widget.dart';
import 'package:flutter_krop/widgets/date_time_picker_widget.dart';

import 'fruit_growth_widget.dart';
import 'harvest_widget.dart';

class CropPage extends StatefulWidget {
  static const ROUTE_NAME = 'CropPage';

  @override
  _CropPageState createState() => _CropPageState();
}

class _CropPageState extends State<CropPage> {
  static const TAG = 'CropPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              child: Harvest(
                onClick: () {
                  ShowDialogUtils.showChartDetail(context, Harvest());
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              child: FruitGrowthWidget(
                onClick: () {
                  ShowDialogUtils.showChartDetail(context, FruitGrowthWidget());
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              child: LeavesWidget(
                onClick: () {
                  ShowDialogUtils.showChartDetail(context, LeavesWidget());
                },
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}

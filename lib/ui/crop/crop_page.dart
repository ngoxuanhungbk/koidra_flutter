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
            SizedBox(
              height: 50,
            ),
            Container(
              height: 220,
              child: Harvest(
                isZoom: false,
                isShowDetail: true,
                onClick: () {
                  ShowDialogUtils.showChartDetail(
                      context,
                      Harvest(
                        isZoom: true,
                        isShowDetail: false,
                      ));
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              child: FruitGrowthWidget(
                isZoom: false,
                isShowDetail: true,
                onClick: () {
                  ShowDialogUtils.showChartDetail(
                      context,
                      FruitGrowthWidget(
                        isZoom: true,
                        isShowDetail: false,
                      ));
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              child: LeavesWidget(
                isZoom: false,
                isShowDetail: true,
                onClick: () {
                  ShowDialogUtils.showChartDetail(
                      context,
                      LeavesWidget(
                        isZoom: true,
                        isShowDetail: false,
                      ));
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

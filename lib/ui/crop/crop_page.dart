import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/ui/crop/leaves_widget.dart';

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
                  _showDialog();
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
                  _showDialog();
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
                  _showDialog();
                },
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }

  _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return OrientationBuilder(builder: (context, orientation) {
            return orientation == Orientation.portrait ? Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 220,
                    child: Harvest(
                      onClick: () {},
                    ),
                  )
                ],
              ),
            )
                : Harvest(
                onClick: () {});
          });
        });
  }
}

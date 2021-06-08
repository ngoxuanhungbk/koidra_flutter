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
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text('CROP'),
            ),
            Harvest(),
            FruitGrowthWidget(),
            LeavesWidget()
          ],
        ),
      ),
    );
  }
}

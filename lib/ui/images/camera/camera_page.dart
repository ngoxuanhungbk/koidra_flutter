import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/data/models/camera_model.dart';
import 'package:flutter_krop/utils/show_dialog_widget.dart';

class CameraPage extends StatefulWidget {
  static const ROUTE_NAME = 'CameraPage';
  final CameraModel cameraModel;

  CameraPage(this.cameraModel);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  static const TAG = 'CameraPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(widget.cameraModel.cameraName),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Back",
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Color(0xff523AF2),
                      decoration: TextDecoration.underline)),
            ),
          )
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              scrollDirection: Axis.vertical,
              itemCount: widget.cameraModel.cameraImageShow.length,
              itemBuilder: (context, index) {
                var _item = Container(
                  child: Image.asset(
                    widget.cameraModel.cameraImageShow[index],
                    fit: BoxFit.cover,
                  ),
                );
                return GestureDetector(
                  onTap: () {
                    ShowDialogUtils.showChartDetail(context, _item);
                  },
                  child: _item,
                );
              }),
        ),
      ),
    );
  }
}

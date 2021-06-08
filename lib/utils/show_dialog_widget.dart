import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowDialogUtils {
  static void showChartDetail(BuildContext context, Widget widget) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return OrientationBuilder(builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? Container(
              margin: EdgeInsets.all(8),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 220,
                          child: widget,
                        )
                      ],
                    ),
                  )
                : Container(margin:EdgeInsets.all(8),child: widget);
          });
        });
  }
}

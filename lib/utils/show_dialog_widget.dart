import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_krop/widgets/date_time_picker_widget.dart';

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
                : Container(margin: EdgeInsets.all(8), child: widget);
          });
        });
  }

  static void showCalenderDialog(BuildContext context, callBack) {
    String dateTimeNewPick = "";
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Stack(
            children: [
              Positioned.fill(
                top: 50,
                right: 10,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 300,
                    height: 240,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(child: DateTimePickerWidget((value) {
                          dateTimeNewPick = value;
                        })),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Cancel",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(color: Colors.black),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (dateTimeNewPick != "") {
                                  callBack(dateTimeNewPick);
                                }
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 28.0, left: 8),
                                child: Text("Ok",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: Colors.green)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }

  static void showCameraDetail(BuildContext context, Widget widget) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return OrientationBuilder(builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? Container(
                    margin: EdgeInsets.all(8),
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16, top: 12, bottom: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Camera detail",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(color: Colors.black),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Icon(Icons.close),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 1,
                          ),
                          Container(
                            child: widget,
                          )
                        ],
                      ),
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    margin: EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16, top: 12, bottom: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Camera detail",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(color: Colors.black),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Icon(Icons.close),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 1,
                        ),
                        Expanded(
                          child: widget,
                        )
                      ],
                    ));
          });
        });
  }
}

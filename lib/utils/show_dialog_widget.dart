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
                        Container(
                            width: double.infinity,
                            child: DateTimePickerWidget((value) {
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
                                    const EdgeInsets.only(right: 28.0, left: 16),
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

  static void showDialogSelectZone(BuildContext context, callBack) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return Stack(
            children: [
              Positioned.fill(
                top: 50,
                left: 20,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 100,
                    height: 250,
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
                    child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              callBack("Zone ${index + 1}");
                              Navigator.pop(context);
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8),
                                  child: Text(
                                    "Zone ${index + 1}",
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                ),
                                Divider(),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              )
            ],
          );
        });
  }
}

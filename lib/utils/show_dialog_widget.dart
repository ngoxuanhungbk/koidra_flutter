import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowDialogUtils {
  static void showDialogConfirm(
      BuildContext context, String mes, yesCallBack) {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  margin: EdgeInsets.only(left: 16, right: 16),
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 16, right: 16),
                  child: Column(
                    children: [
                      Text(
                        mes,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Cancel",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                print("callback");
                                yesCallBack();
                                Navigator.of(context).pop();
                              },
                              child: Text("Yes"))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  static void showDialogError(
      BuildContext context, String mes) {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  margin: EdgeInsets.only(left: 16, right: 16),
                  padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 16, right: 16),
                  child: Column(
                    children: [
                      Text(
                        mes,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Ok"))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

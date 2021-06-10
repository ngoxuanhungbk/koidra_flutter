import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/data/models/account_model.dart';
import 'package:flutter_krop/gen/assets.gen.dart';
import 'package:flutter_krop/utils/show_dialog_widget.dart';
import 'package:flutter_krop/widgets/formfields/custom_password_input_field.dart';

class ChangePasswordWidget extends StatefulWidget {
  static const ROUTE_NAME = 'ChangePasswordWidget';
  final AccountModel accountModel;
  final callBack;

  ChangePasswordWidget(this.accountModel, this.callBack);

  @override
  _ChangePasswordWidgetState createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
  static const TAG = 'ChangePasswordWidget';
  bool isShowChangePassword = false;
  String currentPassword, newPassword, confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2), // changes position of shadow
            )
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Image.asset(
                      Assets.images.icUser.path,
                      width: 28,
                      height: 28,
                    )),
                Expanded(
                  flex: 5,
                  child: Text("Email: ${widget.accountModel.email}",
                      style: Theme
                          .of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(
                          color: Colors.black, fontWeight: FontWeight.w400)),
                )
              ],
            ),
          ),
          !isShowChangePassword
              ? GestureDetector(
            onTap: () {
              setState(() {
                isShowChangePassword = true;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12),
              child: Row(
                children: [
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                      flex: 5,
                      child: Text(
                        "Change password",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(
                            color: Color(0xff523AF2),
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w200),
                      ))
                ],
              ),
            ),
          )
              : SizedBox.shrink(),
          AnimatedContainer(
            height: isShowChangePassword ? 300 : 0,
            duration: Duration(seconds: 1),
            curve: Curves.easeIn,
            child: ListView(
              // mainAxisSize: MainAxisSize.min,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(left: 16.0, right: 16, top: 12),
                  child: CustomPasswordInputField(
                    "Current Password",
                    "Enter your current password",
                    onEditingComplete: (value) {
                      currentPassword = value;
                    },
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 16.0, right: 16, top: 12),
                  child: CustomPasswordInputField(
                    "New Password",
                    "Enter your new password",
                    onEditingComplete: (value) {
                      newPassword = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16, top: 12, bottom: 12),
                  child: CustomPasswordInputField(
                    "Confirm New Password",
                    "Confirm your new password",
                    onEditingComplete: (value) {
                      confirmPassword = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0, bottom: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isShowChangePassword = false;
                          });
                        },
                        child: Text(
                          "Cancel",
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Color(0xff2C67DD)),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (widget.accountModel.password !=
                                currentPassword) {
                              ShowDialogUtils.showDialogError(
                                  context, "Current password incorrect");
                            } else if (confirmPassword != newPassword) {
                              ShowDialogUtils.showDialogError(context,
                                  "Confirm password is different with new password ");
                            } else if (confirmPassword.length < 6 || newPassword
                                .length < 6){
                              ShowDialogUtils.showDialogError(context,
                                  "New password must be more than 6 characters!");
                            } else {
                              ShowDialogUtils.showDialogConfirm(
                                  context, "You want to save changes made?",
                                      () {
                                    //todo save password
                                    setState(() {
                                      isShowChangePassword = false;
                                      widget.callBack(newPassword);
                                    });
                                  });
                            }
                          },
                          child: Text("Save"))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

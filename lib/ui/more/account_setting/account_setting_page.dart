import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_krop/bloc/account_setting/account_setting_bloc.dart';
import 'package:flutter_krop/bloc/account_setting/account_setting_state.dart';
import 'package:flutter_krop/bloc/blocs.dart';
import 'package:flutter_krop/data/models/account_model.dart';
import 'package:flutter_krop/gen/assets.gen.dart';
import 'package:flutter_krop/widgets/error_widget.dart';
import 'package:flutter_krop/widgets/formfields/custom_password_input_field.dart';
import 'package:flutter_krop/widgets/formfields/setting_text_formfield.dart';
import 'package:flutter_krop/widgets/loading_widget.dart';

import 'change_password_widget.dart';

class AccountSettingPage extends StatefulWidget {
  static const ROUTE_NAME = 'AccountSettingPage';

  @override
  _AccountSettingPageState createState() => _AccountSettingPageState();
}

class _AccountSettingPageState extends State<AccountSettingPage> {
  static const TAG = 'AccountSettingPage';
  TextEditingController _currentPasswordController;
  String userName = "";
  FocusNode myFocusNode = new FocusNode();
  final AccountSettingBloc _bloc = AccountSettingBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc.init();
    _currentPasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Account Settings",
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Back",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Color(0xff523AF2),
                    decoration: TextDecoration.underline),
              ),
            ),
          )
        ],
      ),
      body: BlocProvider.value(
        value: _bloc,
        child: BlocBuilder<AccountSettingBloc, AccountSettingState>(
          builder: (context, state) {
            return state.when((accountModel) => _buildContent(accountModel),
                loading: () => LoadingWidget(),
                error: (mes) => MyErrorWidget(mes));
          },
        ),
      ),
    );
  }

  _buildContent(AccountModel accountModel) {
    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ChangePasswordWidget(accountModel, (newPassword) {
                _bloc.changePassword(accountModel, newPassword);
              }),
              GestureDetector(
                onTap: () {
                  _bloc.clickUserManual(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 16, right: 16, top: 20),
                  alignment: Alignment.center,
                  height: 80,
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
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.asset(
                            Assets.images.icUserManual.path,
                            width: 28,
                            height: 28,
                          )),
                      Expanded(
                        flex: 5,
                        child: Text("User Manual",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _bloc.clickSignOut(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 16, right: 16, top: 20),
                  alignment: Alignment.center,
                  height: 80,
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
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.asset(
                            Assets.images.icSignout.path,
                            width: 28,
                            height: 28,
                          )),
                      Expanded(
                        flex: 5,
                        child: Text("Sign out",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

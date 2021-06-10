import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_krop/bloc/account_setting/account_setting_state.dart';
import 'package:flutter_krop/bloc/auth/AuthBloc.dart';
import 'package:flutter_krop/bloc/blocs.dart';
import 'package:flutter_krop/data/models/account_model.dart';
import 'package:flutter_krop/main.dart';
import 'package:flutter_krop/utils/show_dialog_widget.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountSettingBloc extends Cubit<AccountSettingState> {
  AccountSettingBloc() : super(AccountSettingState.loading());

  void init() {
    emit(AccountSettingState(AccountModel(1, "admin@koidra.ai", "123456", "")));
  }

  void changePassword(AccountModel accountModel, String newPassword) {
    //todo change password
  }

  void clickUserManual(BuildContext context) {
    ShowDialogUtils.showDialogConfirm(
        context, "This action will open your browser, continue?", () {
      print("launcherUrl");
      String url =
          "https://www.notion.so/Krop-Manager-User-Manual-f90268df9dd34efe855ccce21eb80263";
      _launchURL(context, url);
    });
  }

  void clickSignOut(BuildContext context) {
    //todo logout
    context.read<AuthBloc>().emit(AuthNavigationState.unAuthorized());
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => RootPage()), (_) => false);
  }

  void _launchURL(BuildContext context, String url) async {
    await canLaunch(url)
        ? await launch(url)
        : ShowDialogUtils.showDialogError(
            context, "An error occurred, please try again later!");
  }
}

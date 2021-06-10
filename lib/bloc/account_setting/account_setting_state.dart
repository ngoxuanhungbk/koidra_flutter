import 'package:flutter_krop/data/models/account_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_setting_state.freezed.dart';

@freezed
abstract class AccountSettingState with _$AccountSettingState {
  const factory AccountSettingState(AccountModel accountModel) = AccountSettingStateData;
  const factory AccountSettingState.loading() = AccountSettingStateLoading;
  const factory AccountSettingState.error(dynamic error) = AccountSettingStateError;
}
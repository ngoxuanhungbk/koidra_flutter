// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'account_setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccountSettingStateTearOff {
  const _$AccountSettingStateTearOff();

// ignore: unused_element
  AccountSettingStateData call(AccountModel<dynamic> accountModel) {
    return AccountSettingStateData(
      accountModel,
    );
  }

// ignore: unused_element
  AccountSettingStateLoading loading() {
    return const AccountSettingStateLoading();
  }

// ignore: unused_element
  AccountSettingStateError error(dynamic error) {
    return AccountSettingStateError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountSettingState = _$AccountSettingStateTearOff();

/// @nodoc
mixin _$AccountSettingState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(AccountModel<dynamic> accountModel), {
    @required TResult loading(),
    @required TResult error(dynamic error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(AccountModel<dynamic> accountModel), {
    TResult loading(),
    TResult error(dynamic error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(AccountSettingStateData value), {
    @required TResult loading(AccountSettingStateLoading value),
    @required TResult error(AccountSettingStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(AccountSettingStateData value), {
    TResult loading(AccountSettingStateLoading value),
    TResult error(AccountSettingStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AccountSettingStateCopyWith<$Res> {
  factory $AccountSettingStateCopyWith(
          AccountSettingState value, $Res Function(AccountSettingState) then) =
      _$AccountSettingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountSettingStateCopyWithImpl<$Res>
    implements $AccountSettingStateCopyWith<$Res> {
  _$AccountSettingStateCopyWithImpl(this._value, this._then);

  final AccountSettingState _value;
  // ignore: unused_field
  final $Res Function(AccountSettingState) _then;
}

/// @nodoc
abstract class $AccountSettingStateDataCopyWith<$Res> {
  factory $AccountSettingStateDataCopyWith(AccountSettingStateData value,
          $Res Function(AccountSettingStateData) then) =
      _$AccountSettingStateDataCopyWithImpl<$Res>;
  $Res call({AccountModel<dynamic> accountModel});
}

/// @nodoc
class _$AccountSettingStateDataCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res>
    implements $AccountSettingStateDataCopyWith<$Res> {
  _$AccountSettingStateDataCopyWithImpl(AccountSettingStateData _value,
      $Res Function(AccountSettingStateData) _then)
      : super(_value, (v) => _then(v as AccountSettingStateData));

  @override
  AccountSettingStateData get _value => super._value as AccountSettingStateData;

  @override
  $Res call({
    Object accountModel = freezed,
  }) {
    return _then(AccountSettingStateData(
      accountModel == freezed
          ? _value.accountModel
          : accountModel as AccountModel<dynamic>,
    ));
  }
}

/// @nodoc
class _$AccountSettingStateData implements AccountSettingStateData {
  const _$AccountSettingStateData(this.accountModel)
      : assert(accountModel != null);

  @override
  final AccountModel<dynamic> accountModel;

  @override
  String toString() {
    return 'AccountSettingState(accountModel: $accountModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountSettingStateData &&
            (identical(other.accountModel, accountModel) ||
                const DeepCollectionEquality()
                    .equals(other.accountModel, accountModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(accountModel);

  @JsonKey(ignore: true)
  @override
  $AccountSettingStateDataCopyWith<AccountSettingStateData> get copyWith =>
      _$AccountSettingStateDataCopyWithImpl<AccountSettingStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(AccountModel<dynamic> accountModel), {
    @required TResult loading(),
    @required TResult error(dynamic error),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return $default(accountModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(AccountModel<dynamic> accountModel), {
    TResult loading(),
    TResult error(dynamic error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(accountModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(AccountSettingStateData value), {
    @required TResult loading(AccountSettingStateLoading value),
    @required TResult error(AccountSettingStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(AccountSettingStateData value), {
    TResult loading(AccountSettingStateLoading value),
    TResult error(AccountSettingStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AccountSettingStateData implements AccountSettingState {
  const factory AccountSettingStateData(AccountModel<dynamic> accountModel) =
      _$AccountSettingStateData;

  AccountModel<dynamic> get accountModel;
  @JsonKey(ignore: true)
  $AccountSettingStateDataCopyWith<AccountSettingStateData> get copyWith;
}

/// @nodoc
abstract class $AccountSettingStateLoadingCopyWith<$Res> {
  factory $AccountSettingStateLoadingCopyWith(AccountSettingStateLoading value,
          $Res Function(AccountSettingStateLoading) then) =
      _$AccountSettingStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountSettingStateLoadingCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res>
    implements $AccountSettingStateLoadingCopyWith<$Res> {
  _$AccountSettingStateLoadingCopyWithImpl(AccountSettingStateLoading _value,
      $Res Function(AccountSettingStateLoading) _then)
      : super(_value, (v) => _then(v as AccountSettingStateLoading));

  @override
  AccountSettingStateLoading get _value =>
      super._value as AccountSettingStateLoading;
}

/// @nodoc
class _$AccountSettingStateLoading implements AccountSettingStateLoading {
  const _$AccountSettingStateLoading();

  @override
  String toString() {
    return 'AccountSettingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountSettingStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(AccountModel<dynamic> accountModel), {
    @required TResult loading(),
    @required TResult error(dynamic error),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(AccountModel<dynamic> accountModel), {
    TResult loading(),
    TResult error(dynamic error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(AccountSettingStateData value), {
    @required TResult loading(AccountSettingStateLoading value),
    @required TResult error(AccountSettingStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(AccountSettingStateData value), {
    TResult loading(AccountSettingStateLoading value),
    TResult error(AccountSettingStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AccountSettingStateLoading implements AccountSettingState {
  const factory AccountSettingStateLoading() = _$AccountSettingStateLoading;
}

/// @nodoc
abstract class $AccountSettingStateErrorCopyWith<$Res> {
  factory $AccountSettingStateErrorCopyWith(AccountSettingStateError value,
          $Res Function(AccountSettingStateError) then) =
      _$AccountSettingStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$AccountSettingStateErrorCopyWithImpl<$Res>
    extends _$AccountSettingStateCopyWithImpl<$Res>
    implements $AccountSettingStateErrorCopyWith<$Res> {
  _$AccountSettingStateErrorCopyWithImpl(AccountSettingStateError _value,
      $Res Function(AccountSettingStateError) _then)
      : super(_value, (v) => _then(v as AccountSettingStateError));

  @override
  AccountSettingStateError get _value =>
      super._value as AccountSettingStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(AccountSettingStateError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$AccountSettingStateError implements AccountSettingStateError {
  const _$AccountSettingStateError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'AccountSettingState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountSettingStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $AccountSettingStateErrorCopyWith<AccountSettingStateError> get copyWith =>
      _$AccountSettingStateErrorCopyWithImpl<AccountSettingStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(AccountModel<dynamic> accountModel), {
    @required TResult loading(),
    @required TResult error(dynamic error),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(AccountModel<dynamic> accountModel), {
    TResult loading(),
    TResult error(dynamic error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(AccountSettingStateData value), {
    @required TResult loading(AccountSettingStateLoading value),
    @required TResult error(AccountSettingStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(AccountSettingStateData value), {
    TResult loading(AccountSettingStateLoading value),
    TResult error(AccountSettingStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AccountSettingStateError implements AccountSettingState {
  const factory AccountSettingStateError(dynamic error) =
      _$AccountSettingStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  $AccountSettingStateErrorCopyWith<AccountSettingStateError> get copyWith;
}

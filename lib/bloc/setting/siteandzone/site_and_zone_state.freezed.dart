// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'site_and_zone_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SiteAndZoneStateTearOff {
  const _$SiteAndZoneStateTearOff();

// ignore: unused_element
  SiteAndZoneStateData call(List<SiteAndZoneModel> siteAndZones) {
    return SiteAndZoneStateData(
      siteAndZones,
    );
  }

// ignore: unused_element
  SiteAndZoneStateLoading loading() {
    return const SiteAndZoneStateLoading();
  }

// ignore: unused_element
  SiteAndZoneStateError error(dynamic error) {
    return SiteAndZoneStateError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SiteAndZoneState = _$SiteAndZoneStateTearOff();

/// @nodoc
mixin _$SiteAndZoneState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<SiteAndZoneModel> siteAndZones), {
    @required TResult loading(),
    @required TResult error(dynamic error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<SiteAndZoneModel> siteAndZones), {
    TResult loading(),
    TResult error(dynamic error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(SiteAndZoneStateData value), {
    @required TResult loading(SiteAndZoneStateLoading value),
    @required TResult error(SiteAndZoneStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(SiteAndZoneStateData value), {
    TResult loading(SiteAndZoneStateLoading value),
    TResult error(SiteAndZoneStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SiteAndZoneStateCopyWith<$Res> {
  factory $SiteAndZoneStateCopyWith(
          SiteAndZoneState value, $Res Function(SiteAndZoneState) then) =
      _$SiteAndZoneStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SiteAndZoneStateCopyWithImpl<$Res>
    implements $SiteAndZoneStateCopyWith<$Res> {
  _$SiteAndZoneStateCopyWithImpl(this._value, this._then);

  final SiteAndZoneState _value;
  // ignore: unused_field
  final $Res Function(SiteAndZoneState) _then;
}

/// @nodoc
abstract class $SiteAndZoneStateDataCopyWith<$Res> {
  factory $SiteAndZoneStateDataCopyWith(SiteAndZoneStateData value,
          $Res Function(SiteAndZoneStateData) then) =
      _$SiteAndZoneStateDataCopyWithImpl<$Res>;
  $Res call({List<SiteAndZoneModel> siteAndZones});
}

/// @nodoc
class _$SiteAndZoneStateDataCopyWithImpl<$Res>
    extends _$SiteAndZoneStateCopyWithImpl<$Res>
    implements $SiteAndZoneStateDataCopyWith<$Res> {
  _$SiteAndZoneStateDataCopyWithImpl(
      SiteAndZoneStateData _value, $Res Function(SiteAndZoneStateData) _then)
      : super(_value, (v) => _then(v as SiteAndZoneStateData));

  @override
  SiteAndZoneStateData get _value => super._value as SiteAndZoneStateData;

  @override
  $Res call({
    Object siteAndZones = freezed,
  }) {
    return _then(SiteAndZoneStateData(
      siteAndZones == freezed
          ? _value.siteAndZones
          : siteAndZones as List<SiteAndZoneModel>,
    ));
  }
}

/// @nodoc
class _$SiteAndZoneStateData implements SiteAndZoneStateData {
  const _$SiteAndZoneStateData(this.siteAndZones)
      : assert(siteAndZones != null);

  @override
  final List<SiteAndZoneModel> siteAndZones;

  @override
  String toString() {
    return 'SiteAndZoneState(siteAndZones: $siteAndZones)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SiteAndZoneStateData &&
            (identical(other.siteAndZones, siteAndZones) ||
                const DeepCollectionEquality()
                    .equals(other.siteAndZones, siteAndZones)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(siteAndZones);

  @JsonKey(ignore: true)
  @override
  $SiteAndZoneStateDataCopyWith<SiteAndZoneStateData> get copyWith =>
      _$SiteAndZoneStateDataCopyWithImpl<SiteAndZoneStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<SiteAndZoneModel> siteAndZones), {
    @required TResult loading(),
    @required TResult error(dynamic error),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return $default(siteAndZones);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<SiteAndZoneModel> siteAndZones), {
    TResult loading(),
    TResult error(dynamic error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(siteAndZones);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(SiteAndZoneStateData value), {
    @required TResult loading(SiteAndZoneStateLoading value),
    @required TResult error(SiteAndZoneStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(SiteAndZoneStateData value), {
    TResult loading(SiteAndZoneStateLoading value),
    TResult error(SiteAndZoneStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SiteAndZoneStateData implements SiteAndZoneState {
  const factory SiteAndZoneStateData(List<SiteAndZoneModel> siteAndZones) =
      _$SiteAndZoneStateData;

  List<SiteAndZoneModel> get siteAndZones;
  @JsonKey(ignore: true)
  $SiteAndZoneStateDataCopyWith<SiteAndZoneStateData> get copyWith;
}

/// @nodoc
abstract class $SiteAndZoneStateLoadingCopyWith<$Res> {
  factory $SiteAndZoneStateLoadingCopyWith(SiteAndZoneStateLoading value,
          $Res Function(SiteAndZoneStateLoading) then) =
      _$SiteAndZoneStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SiteAndZoneStateLoadingCopyWithImpl<$Res>
    extends _$SiteAndZoneStateCopyWithImpl<$Res>
    implements $SiteAndZoneStateLoadingCopyWith<$Res> {
  _$SiteAndZoneStateLoadingCopyWithImpl(SiteAndZoneStateLoading _value,
      $Res Function(SiteAndZoneStateLoading) _then)
      : super(_value, (v) => _then(v as SiteAndZoneStateLoading));

  @override
  SiteAndZoneStateLoading get _value => super._value as SiteAndZoneStateLoading;
}

/// @nodoc
class _$SiteAndZoneStateLoading implements SiteAndZoneStateLoading {
  const _$SiteAndZoneStateLoading();

  @override
  String toString() {
    return 'SiteAndZoneState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SiteAndZoneStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<SiteAndZoneModel> siteAndZones), {
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
    TResult $default(List<SiteAndZoneModel> siteAndZones), {
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
    TResult $default(SiteAndZoneStateData value), {
    @required TResult loading(SiteAndZoneStateLoading value),
    @required TResult error(SiteAndZoneStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(SiteAndZoneStateData value), {
    TResult loading(SiteAndZoneStateLoading value),
    TResult error(SiteAndZoneStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SiteAndZoneStateLoading implements SiteAndZoneState {
  const factory SiteAndZoneStateLoading() = _$SiteAndZoneStateLoading;
}

/// @nodoc
abstract class $SiteAndZoneStateErrorCopyWith<$Res> {
  factory $SiteAndZoneStateErrorCopyWith(SiteAndZoneStateError value,
          $Res Function(SiteAndZoneStateError) then) =
      _$SiteAndZoneStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$SiteAndZoneStateErrorCopyWithImpl<$Res>
    extends _$SiteAndZoneStateCopyWithImpl<$Res>
    implements $SiteAndZoneStateErrorCopyWith<$Res> {
  _$SiteAndZoneStateErrorCopyWithImpl(
      SiteAndZoneStateError _value, $Res Function(SiteAndZoneStateError) _then)
      : super(_value, (v) => _then(v as SiteAndZoneStateError));

  @override
  SiteAndZoneStateError get _value => super._value as SiteAndZoneStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SiteAndZoneStateError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$SiteAndZoneStateError implements SiteAndZoneStateError {
  const _$SiteAndZoneStateError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'SiteAndZoneState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SiteAndZoneStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SiteAndZoneStateErrorCopyWith<SiteAndZoneStateError> get copyWith =>
      _$SiteAndZoneStateErrorCopyWithImpl<SiteAndZoneStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<SiteAndZoneModel> siteAndZones), {
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
    TResult $default(List<SiteAndZoneModel> siteAndZones), {
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
    TResult $default(SiteAndZoneStateData value), {
    @required TResult loading(SiteAndZoneStateLoading value),
    @required TResult error(SiteAndZoneStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(SiteAndZoneStateData value), {
    TResult loading(SiteAndZoneStateLoading value),
    TResult error(SiteAndZoneStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SiteAndZoneStateError implements SiteAndZoneState {
  const factory SiteAndZoneStateError(dynamic error) = _$SiteAndZoneStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  $SiteAndZoneStateErrorCopyWith<SiteAndZoneStateError> get copyWith;
}

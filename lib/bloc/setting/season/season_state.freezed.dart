// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'season_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SeasonStateTearOff {
  const _$SeasonStateTearOff();

// ignore: unused_element
  SeasonStateData call(List<SeasonModel> seasons) {
    return SeasonStateData(
      seasons,
    );
  }

// ignore: unused_element
  SeasonStateLoading loading() {
    return const SeasonStateLoading();
  }

// ignore: unused_element
  SeasonStateError error(dynamic error) {
    return SeasonStateError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SeasonState = _$SeasonStateTearOff();

/// @nodoc
mixin _$SeasonState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<SeasonModel> seasons), {
    @required TResult loading(),
    @required TResult error(dynamic error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<SeasonModel> seasons), {
    TResult loading(),
    TResult error(dynamic error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(SeasonStateData value), {
    @required TResult loading(SeasonStateLoading value),
    @required TResult error(SeasonStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(SeasonStateData value), {
    TResult loading(SeasonStateLoading value),
    TResult error(SeasonStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SeasonStateCopyWith<$Res> {
  factory $SeasonStateCopyWith(
          SeasonState value, $Res Function(SeasonState) then) =
      _$SeasonStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SeasonStateCopyWithImpl<$Res> implements $SeasonStateCopyWith<$Res> {
  _$SeasonStateCopyWithImpl(this._value, this._then);

  final SeasonState _value;
  // ignore: unused_field
  final $Res Function(SeasonState) _then;
}

/// @nodoc
abstract class $SeasonStateDataCopyWith<$Res> {
  factory $SeasonStateDataCopyWith(
          SeasonStateData value, $Res Function(SeasonStateData) then) =
      _$SeasonStateDataCopyWithImpl<$Res>;
  $Res call({List<SeasonModel> seasons});
}

/// @nodoc
class _$SeasonStateDataCopyWithImpl<$Res>
    extends _$SeasonStateCopyWithImpl<$Res>
    implements $SeasonStateDataCopyWith<$Res> {
  _$SeasonStateDataCopyWithImpl(
      SeasonStateData _value, $Res Function(SeasonStateData) _then)
      : super(_value, (v) => _then(v as SeasonStateData));

  @override
  SeasonStateData get _value => super._value as SeasonStateData;

  @override
  $Res call({
    Object seasons = freezed,
  }) {
    return _then(SeasonStateData(
      seasons == freezed ? _value.seasons : seasons as List<SeasonModel>,
    ));
  }
}

/// @nodoc
class _$SeasonStateData implements SeasonStateData {
  const _$SeasonStateData(this.seasons) : assert(seasons != null);

  @override
  final List<SeasonModel> seasons;

  @override
  String toString() {
    return 'SeasonState(seasons: $seasons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeasonStateData &&
            (identical(other.seasons, seasons) ||
                const DeepCollectionEquality().equals(other.seasons, seasons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seasons);

  @JsonKey(ignore: true)
  @override
  $SeasonStateDataCopyWith<SeasonStateData> get copyWith =>
      _$SeasonStateDataCopyWithImpl<SeasonStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<SeasonModel> seasons), {
    @required TResult loading(),
    @required TResult error(dynamic error),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return $default(seasons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<SeasonModel> seasons), {
    TResult loading(),
    TResult error(dynamic error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(seasons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(SeasonStateData value), {
    @required TResult loading(SeasonStateLoading value),
    @required TResult error(SeasonStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(SeasonStateData value), {
    TResult loading(SeasonStateLoading value),
    TResult error(SeasonStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SeasonStateData implements SeasonState {
  const factory SeasonStateData(List<SeasonModel> seasons) = _$SeasonStateData;

  List<SeasonModel> get seasons;
  @JsonKey(ignore: true)
  $SeasonStateDataCopyWith<SeasonStateData> get copyWith;
}

/// @nodoc
abstract class $SeasonStateLoadingCopyWith<$Res> {
  factory $SeasonStateLoadingCopyWith(
          SeasonStateLoading value, $Res Function(SeasonStateLoading) then) =
      _$SeasonStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SeasonStateLoadingCopyWithImpl<$Res>
    extends _$SeasonStateCopyWithImpl<$Res>
    implements $SeasonStateLoadingCopyWith<$Res> {
  _$SeasonStateLoadingCopyWithImpl(
      SeasonStateLoading _value, $Res Function(SeasonStateLoading) _then)
      : super(_value, (v) => _then(v as SeasonStateLoading));

  @override
  SeasonStateLoading get _value => super._value as SeasonStateLoading;
}

/// @nodoc
class _$SeasonStateLoading implements SeasonStateLoading {
  const _$SeasonStateLoading();

  @override
  String toString() {
    return 'SeasonState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SeasonStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<SeasonModel> seasons), {
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
    TResult $default(List<SeasonModel> seasons), {
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
    TResult $default(SeasonStateData value), {
    @required TResult loading(SeasonStateLoading value),
    @required TResult error(SeasonStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(SeasonStateData value), {
    TResult loading(SeasonStateLoading value),
    TResult error(SeasonStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SeasonStateLoading implements SeasonState {
  const factory SeasonStateLoading() = _$SeasonStateLoading;
}

/// @nodoc
abstract class $SeasonStateErrorCopyWith<$Res> {
  factory $SeasonStateErrorCopyWith(
          SeasonStateError value, $Res Function(SeasonStateError) then) =
      _$SeasonStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$SeasonStateErrorCopyWithImpl<$Res>
    extends _$SeasonStateCopyWithImpl<$Res>
    implements $SeasonStateErrorCopyWith<$Res> {
  _$SeasonStateErrorCopyWithImpl(
      SeasonStateError _value, $Res Function(SeasonStateError) _then)
      : super(_value, (v) => _then(v as SeasonStateError));

  @override
  SeasonStateError get _value => super._value as SeasonStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SeasonStateError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$SeasonStateError implements SeasonStateError {
  const _$SeasonStateError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'SeasonState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SeasonStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $SeasonStateErrorCopyWith<SeasonStateError> get copyWith =>
      _$SeasonStateErrorCopyWithImpl<SeasonStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<SeasonModel> seasons), {
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
    TResult $default(List<SeasonModel> seasons), {
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
    TResult $default(SeasonStateData value), {
    @required TResult loading(SeasonStateLoading value),
    @required TResult error(SeasonStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(SeasonStateData value), {
    TResult loading(SeasonStateLoading value),
    TResult error(SeasonStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SeasonStateError implements SeasonState {
  const factory SeasonStateError(dynamic error) = _$SeasonStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  $SeasonStateErrorCopyWith<SeasonStateError> get copyWith;
}

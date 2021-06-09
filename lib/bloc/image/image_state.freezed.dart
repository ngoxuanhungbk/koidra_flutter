// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ImageStateTearOff {
  const _$ImageStateTearOff();

// ignore: unused_element
  ImageStateData call(ImagePageModel<dynamic> model) {
    return ImageStateData(
      model,
    );
  }

// ignore: unused_element
  ImageStateLoading loading() {
    return const ImageStateLoading();
  }

// ignore: unused_element
  ImageStateError error(dynamic error) {
    return ImageStateError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImageState = _$ImageStateTearOff();

/// @nodoc
mixin _$ImageState {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(ImagePageModel<dynamic> model), {
    @required TResult loading(),
    @required TResult error(dynamic error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(ImagePageModel<dynamic> model), {
    TResult loading(),
    TResult error(dynamic error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(ImageStateData value), {
    @required TResult loading(ImageStateLoading value),
    @required TResult error(ImageStateError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(ImageStateData value), {
    TResult loading(ImageStateLoading value),
    TResult error(ImageStateError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res> implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  final ImageState _value;
  // ignore: unused_field
  final $Res Function(ImageState) _then;
}

/// @nodoc
abstract class $ImageStateDataCopyWith<$Res> {
  factory $ImageStateDataCopyWith(
          ImageStateData value, $Res Function(ImageStateData) then) =
      _$ImageStateDataCopyWithImpl<$Res>;
  $Res call({ImagePageModel<dynamic> model});
}

/// @nodoc
class _$ImageStateDataCopyWithImpl<$Res> extends _$ImageStateCopyWithImpl<$Res>
    implements $ImageStateDataCopyWith<$Res> {
  _$ImageStateDataCopyWithImpl(
      ImageStateData _value, $Res Function(ImageStateData) _then)
      : super(_value, (v) => _then(v as ImageStateData));

  @override
  ImageStateData get _value => super._value as ImageStateData;

  @override
  $Res call({
    Object model = freezed,
  }) {
    return _then(ImageStateData(
      model == freezed ? _value.model : model as ImagePageModel<dynamic>,
    ));
  }
}

/// @nodoc
class _$ImageStateData implements ImageStateData {
  const _$ImageStateData(this.model) : assert(model != null);

  @override
  final ImagePageModel<dynamic> model;

  @override
  String toString() {
    return 'ImageState(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageStateData &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  $ImageStateDataCopyWith<ImageStateData> get copyWith =>
      _$ImageStateDataCopyWithImpl<ImageStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(ImagePageModel<dynamic> model), {
    @required TResult loading(),
    @required TResult error(dynamic error),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return $default(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(ImagePageModel<dynamic> model), {
    TResult loading(),
    TResult error(dynamic error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(ImageStateData value), {
    @required TResult loading(ImageStateLoading value),
    @required TResult error(ImageStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(ImageStateData value), {
    TResult loading(ImageStateLoading value),
    TResult error(ImageStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ImageStateData implements ImageState {
  const factory ImageStateData(ImagePageModel<dynamic> model) =
      _$ImageStateData;

  ImagePageModel<dynamic> get model;
  @JsonKey(ignore: true)
  $ImageStateDataCopyWith<ImageStateData> get copyWith;
}

/// @nodoc
abstract class $ImageStateLoadingCopyWith<$Res> {
  factory $ImageStateLoadingCopyWith(
          ImageStateLoading value, $Res Function(ImageStateLoading) then) =
      _$ImageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ImageStateLoadingCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res>
    implements $ImageStateLoadingCopyWith<$Res> {
  _$ImageStateLoadingCopyWithImpl(
      ImageStateLoading _value, $Res Function(ImageStateLoading) _then)
      : super(_value, (v) => _then(v as ImageStateLoading));

  @override
  ImageStateLoading get _value => super._value as ImageStateLoading;
}

/// @nodoc
class _$ImageStateLoading implements ImageStateLoading {
  const _$ImageStateLoading();

  @override
  String toString() {
    return 'ImageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ImageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(ImagePageModel<dynamic> model), {
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
    TResult $default(ImagePageModel<dynamic> model), {
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
    TResult $default(ImageStateData value), {
    @required TResult loading(ImageStateLoading value),
    @required TResult error(ImageStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(ImageStateData value), {
    TResult loading(ImageStateLoading value),
    TResult error(ImageStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ImageStateLoading implements ImageState {
  const factory ImageStateLoading() = _$ImageStateLoading;
}

/// @nodoc
abstract class $ImageStateErrorCopyWith<$Res> {
  factory $ImageStateErrorCopyWith(
          ImageStateError value, $Res Function(ImageStateError) then) =
      _$ImageStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$ImageStateErrorCopyWithImpl<$Res> extends _$ImageStateCopyWithImpl<$Res>
    implements $ImageStateErrorCopyWith<$Res> {
  _$ImageStateErrorCopyWithImpl(
      ImageStateError _value, $Res Function(ImageStateError) _then)
      : super(_value, (v) => _then(v as ImageStateError));

  @override
  ImageStateError get _value => super._value as ImageStateError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ImageStateError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$ImageStateError implements ImageStateError {
  const _$ImageStateError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ImageState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ImageStateErrorCopyWith<ImageStateError> get copyWith =>
      _$ImageStateErrorCopyWithImpl<ImageStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(ImagePageModel<dynamic> model), {
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
    TResult $default(ImagePageModel<dynamic> model), {
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
    TResult $default(ImageStateData value), {
    @required TResult loading(ImageStateLoading value),
    @required TResult error(ImageStateError value),
  }) {
    assert($default != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(ImageStateData value), {
    TResult loading(ImageStateLoading value),
    TResult error(ImageStateError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ImageStateError implements ImageState {
  const factory ImageStateError(dynamic error) = _$ImageStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  $ImageStateErrorCopyWith<ImageStateError> get copyWith;
}

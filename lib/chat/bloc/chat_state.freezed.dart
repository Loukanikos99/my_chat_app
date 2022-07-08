// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMsg) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMsg)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMsg)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStateInitial value) initial,
    required TResult Function(ChatStateLoading value) loading,
    required TResult Function(ChatStateSuccess value) success,
    required TResult Function(ChatStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateSuccess value)? success,
    TResult Function(ChatStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateSuccess value)? success,
    TResult Function(ChatStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;
}

/// @nodoc
abstract class _$$ChatStateInitialCopyWith<$Res> {
  factory _$$ChatStateInitialCopyWith(
          _$ChatStateInitial value, $Res Function(_$ChatStateInitial) then) =
      __$$ChatStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatStateInitialCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements _$$ChatStateInitialCopyWith<$Res> {
  __$$ChatStateInitialCopyWithImpl(
      _$ChatStateInitial _value, $Res Function(_$ChatStateInitial) _then)
      : super(_value, (v) => _then(v as _$ChatStateInitial));

  @override
  _$ChatStateInitial get _value => super._value as _$ChatStateInitial;
}

/// @nodoc

class _$ChatStateInitial implements ChatStateInitial {
  const _$ChatStateInitial();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMsg) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMsg)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMsg)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStateInitial value) initial,
    required TResult Function(ChatStateLoading value) loading,
    required TResult Function(ChatStateSuccess value) success,
    required TResult Function(ChatStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateSuccess value)? success,
    TResult Function(ChatStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateSuccess value)? success,
    TResult Function(ChatStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChatStateInitial implements ChatState {
  const factory ChatStateInitial() = _$ChatStateInitial;
}

/// @nodoc
abstract class _$$ChatStateLoadingCopyWith<$Res> {
  factory _$$ChatStateLoadingCopyWith(
          _$ChatStateLoading value, $Res Function(_$ChatStateLoading) then) =
      __$$ChatStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatStateLoadingCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements _$$ChatStateLoadingCopyWith<$Res> {
  __$$ChatStateLoadingCopyWithImpl(
      _$ChatStateLoading _value, $Res Function(_$ChatStateLoading) _then)
      : super(_value, (v) => _then(v as _$ChatStateLoading));

  @override
  _$ChatStateLoading get _value => super._value as _$ChatStateLoading;
}

/// @nodoc

class _$ChatStateLoading implements ChatStateLoading {
  const _$ChatStateLoading();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMsg) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMsg)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMsg)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStateInitial value) initial,
    required TResult Function(ChatStateLoading value) loading,
    required TResult Function(ChatStateSuccess value) success,
    required TResult Function(ChatStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateSuccess value)? success,
    TResult Function(ChatStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateSuccess value)? success,
    TResult Function(ChatStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatStateLoading implements ChatState {
  const factory ChatStateLoading() = _$ChatStateLoading;
}

/// @nodoc
abstract class _$$ChatStateSuccessCopyWith<$Res> {
  factory _$$ChatStateSuccessCopyWith(
          _$ChatStateSuccess value, $Res Function(_$ChatStateSuccess) then) =
      __$$ChatStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatStateSuccessCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements _$$ChatStateSuccessCopyWith<$Res> {
  __$$ChatStateSuccessCopyWithImpl(
      _$ChatStateSuccess _value, $Res Function(_$ChatStateSuccess) _then)
      : super(_value, (v) => _then(v as _$ChatStateSuccess));

  @override
  _$ChatStateSuccess get _value => super._value as _$ChatStateSuccess;
}

/// @nodoc

class _$ChatStateSuccess implements ChatStateSuccess {
  const _$ChatStateSuccess();

  @override
  String toString() {
    return 'ChatState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMsg) failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMsg)? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMsg)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStateInitial value) initial,
    required TResult Function(ChatStateLoading value) loading,
    required TResult Function(ChatStateSuccess value) success,
    required TResult Function(ChatStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateSuccess value)? success,
    TResult Function(ChatStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateSuccess value)? success,
    TResult Function(ChatStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChatStateSuccess implements ChatState {
  const factory ChatStateSuccess() = _$ChatStateSuccess;
}

/// @nodoc
abstract class _$$ChatStateFailedCopyWith<$Res> {
  factory _$$ChatStateFailedCopyWith(
          _$ChatStateFailed value, $Res Function(_$ChatStateFailed) then) =
      __$$ChatStateFailedCopyWithImpl<$Res>;
  $Res call({String errorMsg});
}

/// @nodoc
class __$$ChatStateFailedCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements _$$ChatStateFailedCopyWith<$Res> {
  __$$ChatStateFailedCopyWithImpl(
      _$ChatStateFailed _value, $Res Function(_$ChatStateFailed) _then)
      : super(_value, (v) => _then(v as _$ChatStateFailed));

  @override
  _$ChatStateFailed get _value => super._value as _$ChatStateFailed;

  @override
  $Res call({
    Object? errorMsg = freezed,
  }) {
    return _then(_$ChatStateFailed(
      errorMsg == freezed
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatStateFailed implements ChatStateFailed {
  const _$ChatStateFailed(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ChatState.failed(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateFailed &&
            const DeepCollectionEquality().equals(other.errorMsg, errorMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errorMsg));

  @JsonKey(ignore: true)
  @override
  _$$ChatStateFailedCopyWith<_$ChatStateFailed> get copyWith =>
      __$$ChatStateFailedCopyWithImpl<_$ChatStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMsg) failed,
  }) {
    return failed(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMsg)? failed,
  }) {
    return failed?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMsg)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatStateInitial value) initial,
    required TResult Function(ChatStateLoading value) loading,
    required TResult Function(ChatStateSuccess value) success,
    required TResult Function(ChatStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateSuccess value)? success,
    TResult Function(ChatStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatStateInitial value)? initial,
    TResult Function(ChatStateLoading value)? loading,
    TResult Function(ChatStateSuccess value)? success,
    TResult Function(ChatStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class ChatStateFailed implements ChatState {
  const factory ChatStateFailed(final String errorMsg) = _$ChatStateFailed;

  String get errorMsg => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChatStateFailedCopyWith<_$ChatStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

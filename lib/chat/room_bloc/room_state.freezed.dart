// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Stream<List<ChatMessage>> messages)
        messagesloaded,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Stream<List<ChatMessage>> messages)? messagesloaded,
    TResult Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Stream<List<ChatMessage>> messages)? messagesloaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateInitial value) initial,
    required TResult Function(RoomStateLoading value) loading,
    required TResult Function(RoomStateLoaded value) loaded,
    required TResult Function(RoomStateMessaggesMessaggesLoaded value)
        messagesloaded,
    required TResult Function(RoomStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateMessaggesMessaggesLoaded value)? messagesloaded,
    TResult Function(RoomStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateMessaggesMessaggesLoaded value)? messagesloaded,
    TResult Function(RoomStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res> implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  final RoomState _value;
  // ignore: unused_field
  final $Res Function(RoomState) _then;
}

/// @nodoc
abstract class _$$RoomStateInitialCopyWith<$Res> {
  factory _$$RoomStateInitialCopyWith(
          _$RoomStateInitial value, $Res Function(_$RoomStateInitial) then) =
      __$$RoomStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomStateInitialCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res>
    implements _$$RoomStateInitialCopyWith<$Res> {
  __$$RoomStateInitialCopyWithImpl(
      _$RoomStateInitial _value, $Res Function(_$RoomStateInitial) _then)
      : super(_value, (v) => _then(v as _$RoomStateInitial));

  @override
  _$RoomStateInitial get _value => super._value as _$RoomStateInitial;
}

/// @nodoc

class _$RoomStateInitial implements RoomStateInitial {
  const _$RoomStateInitial();

  @override
  String toString() {
    return 'RoomState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Stream<List<ChatMessage>> messages)
        messagesloaded,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Stream<List<ChatMessage>> messages)? messagesloaded,
    TResult Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Stream<List<ChatMessage>> messages)? messagesloaded,
    TResult Function()? failed,
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
    required TResult Function(RoomStateInitial value) initial,
    required TResult Function(RoomStateLoading value) loading,
    required TResult Function(RoomStateLoaded value) loaded,
    required TResult Function(RoomStateMessaggesMessaggesLoaded value)
        messagesloaded,
    required TResult Function(RoomStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateMessaggesMessaggesLoaded value)? messagesloaded,
    TResult Function(RoomStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateMessaggesMessaggesLoaded value)? messagesloaded,
    TResult Function(RoomStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RoomStateInitial implements RoomState {
  const factory RoomStateInitial() = _$RoomStateInitial;
}

/// @nodoc
abstract class _$$RoomStateLoadingCopyWith<$Res> {
  factory _$$RoomStateLoadingCopyWith(
          _$RoomStateLoading value, $Res Function(_$RoomStateLoading) then) =
      __$$RoomStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomStateLoadingCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res>
    implements _$$RoomStateLoadingCopyWith<$Res> {
  __$$RoomStateLoadingCopyWithImpl(
      _$RoomStateLoading _value, $Res Function(_$RoomStateLoading) _then)
      : super(_value, (v) => _then(v as _$RoomStateLoading));

  @override
  _$RoomStateLoading get _value => super._value as _$RoomStateLoading;
}

/// @nodoc

class _$RoomStateLoading implements RoomStateLoading {
  const _$RoomStateLoading();

  @override
  String toString() {
    return 'RoomState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Stream<List<ChatMessage>> messages)
        messagesloaded,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Stream<List<ChatMessage>> messages)? messagesloaded,
    TResult Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Stream<List<ChatMessage>> messages)? messagesloaded,
    TResult Function()? failed,
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
    required TResult Function(RoomStateInitial value) initial,
    required TResult Function(RoomStateLoading value) loading,
    required TResult Function(RoomStateLoaded value) loaded,
    required TResult Function(RoomStateMessaggesMessaggesLoaded value)
        messagesloaded,
    required TResult Function(RoomStateFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateMessaggesMessaggesLoaded value)? messagesloaded,
    TResult Function(RoomStateFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateMessaggesMessaggesLoaded value)? messagesloaded,
    TResult Function(RoomStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RoomStateLoading implements RoomState {
  const factory RoomStateLoading() = _$RoomStateLoading;
}

/// @nodoc
abstract class _$$RoomStateLoadedCopyWith<$Res> {
  factory _$$RoomStateLoadedCopyWith(
          _$RoomStateLoaded value, $Res Function(_$RoomStateLoaded) then) =
      __$$RoomStateLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomStateLoadedCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res>
    implements _$$RoomStateLoadedCopyWith<$Res> {
  __$$RoomStateLoadedCopyWithImpl(
      _$RoomStateLoaded _value, $Res Function(_$RoomStateLoaded) _then)
      : super(_value, (v) => _then(v as _$RoomStateLoaded));

  @override
  _$RoomStateLoaded get _value => super._value as _$RoomStateLoaded;
}

/// @nodoc

class _$RoomStateLoaded implements RoomStateLoaded {
  const _$RoomStateLoaded();

  @override
  String toString() {
    return 'RoomState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomStateLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Stream<List<ChatMessage>> messages)
        messagesloaded,
    required TResult Function() failed,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Stream<List<ChatMessage>> messages)? messagesloaded,
    TResult Function()? failed,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Stream<List<ChatMessage>> messages)? messagesloaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateInitial value) initial,
    required TResult Function(RoomStateLoading value) loading,
    required TResult Function(RoomStateLoaded value) loaded,
    required TResult Function(RoomStateMessaggesMessaggesLoaded value)
        messagesloaded,
    required TResult Function(RoomStateFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateMessaggesMessaggesLoaded value)? messagesloaded,
    TResult Function(RoomStateFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateMessaggesMessaggesLoaded value)? messagesloaded,
    TResult Function(RoomStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RoomStateLoaded implements RoomState {
  const factory RoomStateLoaded() = _$RoomStateLoaded;
}

/// @nodoc
abstract class _$$RoomStateMessaggesMessaggesLoadedCopyWith<$Res> {
  factory _$$RoomStateMessaggesMessaggesLoadedCopyWith(
          _$RoomStateMessaggesMessaggesLoaded value,
          $Res Function(_$RoomStateMessaggesMessaggesLoaded) then) =
      __$$RoomStateMessaggesMessaggesLoadedCopyWithImpl<$Res>;
  $Res call({Stream<List<ChatMessage>> messages});
}

/// @nodoc
class __$$RoomStateMessaggesMessaggesLoadedCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res>
    implements _$$RoomStateMessaggesMessaggesLoadedCopyWith<$Res> {
  __$$RoomStateMessaggesMessaggesLoadedCopyWithImpl(
      _$RoomStateMessaggesMessaggesLoaded _value,
      $Res Function(_$RoomStateMessaggesMessaggesLoaded) _then)
      : super(_value, (v) => _then(v as _$RoomStateMessaggesMessaggesLoaded));

  @override
  _$RoomStateMessaggesMessaggesLoaded get _value =>
      super._value as _$RoomStateMessaggesMessaggesLoaded;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_$RoomStateMessaggesMessaggesLoaded(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Stream<List<ChatMessage>>,
    ));
  }
}

/// @nodoc

class _$RoomStateMessaggesMessaggesLoaded
    implements RoomStateMessaggesMessaggesLoaded {
  const _$RoomStateMessaggesMessaggesLoaded({required this.messages});

  @override
  final Stream<List<ChatMessage>> messages;

  @override
  String toString() {
    return 'RoomState.messagesloaded(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStateMessaggesMessaggesLoaded &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  _$$RoomStateMessaggesMessaggesLoadedCopyWith<
          _$RoomStateMessaggesMessaggesLoaded>
      get copyWith => __$$RoomStateMessaggesMessaggesLoadedCopyWithImpl<
          _$RoomStateMessaggesMessaggesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Stream<List<ChatMessage>> messages)
        messagesloaded,
    required TResult Function() failed,
  }) {
    return messagesloaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Stream<List<ChatMessage>> messages)? messagesloaded,
    TResult Function()? failed,
  }) {
    return messagesloaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Stream<List<ChatMessage>> messages)? messagesloaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (messagesloaded != null) {
      return messagesloaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateInitial value) initial,
    required TResult Function(RoomStateLoading value) loading,
    required TResult Function(RoomStateLoaded value) loaded,
    required TResult Function(RoomStateMessaggesMessaggesLoaded value)
        messagesloaded,
    required TResult Function(RoomStateFailed value) failed,
  }) {
    return messagesloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateMessaggesMessaggesLoaded value)? messagesloaded,
    TResult Function(RoomStateFailed value)? failed,
  }) {
    return messagesloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateMessaggesMessaggesLoaded value)? messagesloaded,
    TResult Function(RoomStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (messagesloaded != null) {
      return messagesloaded(this);
    }
    return orElse();
  }
}

abstract class RoomStateMessaggesMessaggesLoaded implements RoomState {
  const factory RoomStateMessaggesMessaggesLoaded(
          {required final Stream<List<ChatMessage>> messages}) =
      _$RoomStateMessaggesMessaggesLoaded;

  Stream<List<ChatMessage>> get messages => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RoomStateMessaggesMessaggesLoadedCopyWith<
          _$RoomStateMessaggesMessaggesLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomStateFailedCopyWith<$Res> {
  factory _$$RoomStateFailedCopyWith(
          _$RoomStateFailed value, $Res Function(_$RoomStateFailed) then) =
      __$$RoomStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomStateFailedCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res>
    implements _$$RoomStateFailedCopyWith<$Res> {
  __$$RoomStateFailedCopyWithImpl(
      _$RoomStateFailed _value, $Res Function(_$RoomStateFailed) _then)
      : super(_value, (v) => _then(v as _$RoomStateFailed));

  @override
  _$RoomStateFailed get _value => super._value as _$RoomStateFailed;
}

/// @nodoc

class _$RoomStateFailed implements RoomStateFailed {
  const _$RoomStateFailed();

  @override
  String toString() {
    return 'RoomState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(Stream<List<ChatMessage>> messages)
        messagesloaded,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Stream<List<ChatMessage>> messages)? messagesloaded,
    TResult Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(Stream<List<ChatMessage>> messages)? messagesloaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateInitial value) initial,
    required TResult Function(RoomStateLoading value) loading,
    required TResult Function(RoomStateLoaded value) loaded,
    required TResult Function(RoomStateMessaggesMessaggesLoaded value)
        messagesloaded,
    required TResult Function(RoomStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateMessaggesMessaggesLoaded value)? messagesloaded,
    TResult Function(RoomStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateMessaggesMessaggesLoaded value)? messagesloaded,
    TResult Function(RoomStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class RoomStateFailed implements RoomState {
  const factory RoomStateFailed() = _$RoomStateFailed;
}

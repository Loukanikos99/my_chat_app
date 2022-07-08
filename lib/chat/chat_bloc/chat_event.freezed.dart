// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  int get limit => throw _privateConstructorUsedError;
  String? get textSearch => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? textSearch) getUsers,
    required TResult Function(int limit, String? textSearch)
        getUsersAlreadyInChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int limit, String? textSearch)? getUsers,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? textSearch)? getUsers,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatGetUsersEvent value) getUsers,
    required TResult Function(ChatGetUsersAlreadyInChatEvent value)
        getUsersAlreadyInChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatEventCopyWith<ChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
  $Res call({int limit, String? textSearch});
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;

  @override
  $Res call({
    Object? limit = freezed,
    Object? textSearch = freezed,
  }) {
    return _then(_value.copyWith(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      textSearch: textSearch == freezed
          ? _value.textSearch
          : textSearch // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$ChatGetUsersEventCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$ChatGetUsersEventCopyWith(
          _$ChatGetUsersEvent value, $Res Function(_$ChatGetUsersEvent) then) =
      __$$ChatGetUsersEventCopyWithImpl<$Res>;
  @override
  $Res call({int limit, String? textSearch});
}

/// @nodoc
class __$$ChatGetUsersEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$ChatGetUsersEventCopyWith<$Res> {
  __$$ChatGetUsersEventCopyWithImpl(
      _$ChatGetUsersEvent _value, $Res Function(_$ChatGetUsersEvent) _then)
      : super(_value, (v) => _then(v as _$ChatGetUsersEvent));

  @override
  _$ChatGetUsersEvent get _value => super._value as _$ChatGetUsersEvent;

  @override
  $Res call({
    Object? limit = freezed,
    Object? textSearch = freezed,
  }) {
    return _then(_$ChatGetUsersEvent(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      textSearch: textSearch == freezed
          ? _value.textSearch
          : textSearch // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatGetUsersEvent implements ChatGetUsersEvent {
  const _$ChatGetUsersEvent({required this.limit, this.textSearch});

  @override
  final int limit;
  @override
  final String? textSearch;

  @override
  String toString() {
    return 'ChatEvent.getUsers(limit: $limit, textSearch: $textSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatGetUsersEvent &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality()
                .equals(other.textSearch, textSearch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(textSearch));

  @JsonKey(ignore: true)
  @override
  _$$ChatGetUsersEventCopyWith<_$ChatGetUsersEvent> get copyWith =>
      __$$ChatGetUsersEventCopyWithImpl<_$ChatGetUsersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? textSearch) getUsers,
    required TResult Function(int limit, String? textSearch)
        getUsersAlreadyInChat,
  }) {
    return getUsers(limit, textSearch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int limit, String? textSearch)? getUsers,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
  }) {
    return getUsers?.call(limit, textSearch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? textSearch)? getUsers,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(limit, textSearch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatGetUsersEvent value) getUsers,
    required TResult Function(ChatGetUsersAlreadyInChatEvent value)
        getUsersAlreadyInChat,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class ChatGetUsersEvent implements ChatEvent {
  const factory ChatGetUsersEvent(
      {required final int limit,
      final String? textSearch}) = _$ChatGetUsersEvent;

  @override
  int get limit => throw _privateConstructorUsedError;
  @override
  String? get textSearch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ChatGetUsersEventCopyWith<_$ChatGetUsersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatGetUsersAlreadyInChatEventCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$ChatGetUsersAlreadyInChatEventCopyWith(
          _$ChatGetUsersAlreadyInChatEvent value,
          $Res Function(_$ChatGetUsersAlreadyInChatEvent) then) =
      __$$ChatGetUsersAlreadyInChatEventCopyWithImpl<$Res>;
  @override
  $Res call({int limit, String? textSearch});
}

/// @nodoc
class __$$ChatGetUsersAlreadyInChatEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$ChatGetUsersAlreadyInChatEventCopyWith<$Res> {
  __$$ChatGetUsersAlreadyInChatEventCopyWithImpl(
      _$ChatGetUsersAlreadyInChatEvent _value,
      $Res Function(_$ChatGetUsersAlreadyInChatEvent) _then)
      : super(_value, (v) => _then(v as _$ChatGetUsersAlreadyInChatEvent));

  @override
  _$ChatGetUsersAlreadyInChatEvent get _value =>
      super._value as _$ChatGetUsersAlreadyInChatEvent;

  @override
  $Res call({
    Object? limit = freezed,
    Object? textSearch = freezed,
  }) {
    return _then(_$ChatGetUsersAlreadyInChatEvent(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      textSearch: textSearch == freezed
          ? _value.textSearch
          : textSearch // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatGetUsersAlreadyInChatEvent
    implements ChatGetUsersAlreadyInChatEvent {
  const _$ChatGetUsersAlreadyInChatEvent(
      {required this.limit, this.textSearch});

  @override
  final int limit;
  @override
  final String? textSearch;

  @override
  String toString() {
    return 'ChatEvent.getUsersAlreadyInChat(limit: $limit, textSearch: $textSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatGetUsersAlreadyInChatEvent &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality()
                .equals(other.textSearch, textSearch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(textSearch));

  @JsonKey(ignore: true)
  @override
  _$$ChatGetUsersAlreadyInChatEventCopyWith<_$ChatGetUsersAlreadyInChatEvent>
      get copyWith => __$$ChatGetUsersAlreadyInChatEventCopyWithImpl<
          _$ChatGetUsersAlreadyInChatEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit, String? textSearch) getUsers,
    required TResult Function(int limit, String? textSearch)
        getUsersAlreadyInChat,
  }) {
    return getUsersAlreadyInChat(limit, textSearch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int limit, String? textSearch)? getUsers,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
  }) {
    return getUsersAlreadyInChat?.call(limit, textSearch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit, String? textSearch)? getUsers,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    required TResult orElse(),
  }) {
    if (getUsersAlreadyInChat != null) {
      return getUsersAlreadyInChat(limit, textSearch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatGetUsersEvent value) getUsers,
    required TResult Function(ChatGetUsersAlreadyInChatEvent value)
        getUsersAlreadyInChat,
  }) {
    return getUsersAlreadyInChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
  }) {
    return getUsersAlreadyInChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    required TResult orElse(),
  }) {
    if (getUsersAlreadyInChat != null) {
      return getUsersAlreadyInChat(this);
    }
    return orElse();
  }
}

abstract class ChatGetUsersAlreadyInChatEvent implements ChatEvent {
  const factory ChatGetUsersAlreadyInChatEvent(
      {required final int limit,
      final String? textSearch}) = _$ChatGetUsersAlreadyInChatEvent;

  @override
  int get limit => throw _privateConstructorUsedError;
  @override
  String? get textSearch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ChatGetUsersAlreadyInChatEventCopyWith<_$ChatGetUsersAlreadyInChatEvent>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(int limit) getChatMessage,
    required TResult Function() getImage,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content, int type)? sendMessage,
    TResult Function(int limit)? getChatMessage,
    TResult Function()? getImage,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, int type)? sendMessage,
    TResult Function(int limit)? getChatMessage,
    TResult Function()? getImage,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomSendMessageEvent value) sendMessage,
    required TResult Function(RoomGetChatMessagesEvent value) getChatMessage,
    required TResult Function(RoomGetImageEvent value) getImage,
    required TResult Function(RoomUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(RoomUpdateFirebaseDataEvent value)
        updateFirestoreData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomSendMessageEvent value)? sendMessage,
    TResult Function(RoomGetChatMessagesEvent value)? getChatMessage,
    TResult Function(RoomGetImageEvent value)? getImage,
    TResult Function(RoomUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(RoomUpdateFirebaseDataEvent value)? updateFirestoreData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomSendMessageEvent value)? sendMessage,
    TResult Function(RoomGetChatMessagesEvent value)? getChatMessage,
    TResult Function(RoomGetImageEvent value)? getImage,
    TResult Function(RoomUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(RoomUpdateFirebaseDataEvent value)? updateFirestoreData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomEventCopyWith<$Res> {
  factory $RoomEventCopyWith(RoomEvent value, $Res Function(RoomEvent) then) =
      _$RoomEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomEventCopyWithImpl<$Res> implements $RoomEventCopyWith<$Res> {
  _$RoomEventCopyWithImpl(this._value, this._then);

  final RoomEvent _value;
  // ignore: unused_field
  final $Res Function(RoomEvent) _then;
}

/// @nodoc
abstract class _$$RoomSendMessageEventCopyWith<$Res> {
  factory _$$RoomSendMessageEventCopyWith(_$RoomSendMessageEvent value,
          $Res Function(_$RoomSendMessageEvent) then) =
      __$$RoomSendMessageEventCopyWithImpl<$Res>;
  $Res call({String content, int type});
}

/// @nodoc
class __$$RoomSendMessageEventCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res>
    implements _$$RoomSendMessageEventCopyWith<$Res> {
  __$$RoomSendMessageEventCopyWithImpl(_$RoomSendMessageEvent _value,
      $Res Function(_$RoomSendMessageEvent) _then)
      : super(_value, (v) => _then(v as _$RoomSendMessageEvent));

  @override
  _$RoomSendMessageEvent get _value => super._value as _$RoomSendMessageEvent;

  @override
  $Res call({
    Object? content = freezed,
    Object? type = freezed,
  }) {
    return _then(_$RoomSendMessageEvent(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RoomSendMessageEvent implements RoomSendMessageEvent {
  const _$RoomSendMessageEvent({required this.content, required this.type});

  @override
  final String content;
  @override
  final int type;

  @override
  String toString() {
    return 'RoomEvent.sendMessage(content: $content, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomSendMessageEvent &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$RoomSendMessageEventCopyWith<_$RoomSendMessageEvent> get copyWith =>
      __$$RoomSendMessageEventCopyWithImpl<_$RoomSendMessageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(int limit) getChatMessage,
    required TResult Function() getImage,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
  }) {
    return sendMessage(content, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content, int type)? sendMessage,
    TResult Function(int limit)? getChatMessage,
    TResult Function()? getImage,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
  }) {
    return sendMessage?.call(content, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, int type)? sendMessage,
    TResult Function(int limit)? getChatMessage,
    TResult Function()? getImage,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(content, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomSendMessageEvent value) sendMessage,
    required TResult Function(RoomGetChatMessagesEvent value) getChatMessage,
    required TResult Function(RoomGetImageEvent value) getImage,
    required TResult Function(RoomUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(RoomUpdateFirebaseDataEvent value)
        updateFirestoreData,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomSendMessageEvent value)? sendMessage,
    TResult Function(RoomGetChatMessagesEvent value)? getChatMessage,
    TResult Function(RoomGetImageEvent value)? getImage,
    TResult Function(RoomUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(RoomUpdateFirebaseDataEvent value)? updateFirestoreData,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomSendMessageEvent value)? sendMessage,
    TResult Function(RoomGetChatMessagesEvent value)? getChatMessage,
    TResult Function(RoomGetImageEvent value)? getImage,
    TResult Function(RoomUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(RoomUpdateFirebaseDataEvent value)? updateFirestoreData,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class RoomSendMessageEvent implements RoomEvent {
  const factory RoomSendMessageEvent(
      {required final String content,
      required final int type}) = _$RoomSendMessageEvent;

  String get content => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RoomSendMessageEventCopyWith<_$RoomSendMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomGetChatMessagesEventCopyWith<$Res> {
  factory _$$RoomGetChatMessagesEventCopyWith(_$RoomGetChatMessagesEvent value,
          $Res Function(_$RoomGetChatMessagesEvent) then) =
      __$$RoomGetChatMessagesEventCopyWithImpl<$Res>;
  $Res call({int limit});
}

/// @nodoc
class __$$RoomGetChatMessagesEventCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res>
    implements _$$RoomGetChatMessagesEventCopyWith<$Res> {
  __$$RoomGetChatMessagesEventCopyWithImpl(_$RoomGetChatMessagesEvent _value,
      $Res Function(_$RoomGetChatMessagesEvent) _then)
      : super(_value, (v) => _then(v as _$RoomGetChatMessagesEvent));

  @override
  _$RoomGetChatMessagesEvent get _value =>
      super._value as _$RoomGetChatMessagesEvent;

  @override
  $Res call({
    Object? limit = freezed,
  }) {
    return _then(_$RoomGetChatMessagesEvent(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RoomGetChatMessagesEvent implements RoomGetChatMessagesEvent {
  const _$RoomGetChatMessagesEvent({required this.limit});

  @override
  final int limit;

  @override
  String toString() {
    return 'RoomEvent.getChatMessage(limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomGetChatMessagesEvent &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$$RoomGetChatMessagesEventCopyWith<_$RoomGetChatMessagesEvent>
      get copyWith =>
          __$$RoomGetChatMessagesEventCopyWithImpl<_$RoomGetChatMessagesEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(int limit) getChatMessage,
    required TResult Function() getImage,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
  }) {
    return getChatMessage(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content, int type)? sendMessage,
    TResult Function(int limit)? getChatMessage,
    TResult Function()? getImage,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
  }) {
    return getChatMessage?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, int type)? sendMessage,
    TResult Function(int limit)? getChatMessage,
    TResult Function()? getImage,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    required TResult orElse(),
  }) {
    if (getChatMessage != null) {
      return getChatMessage(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomSendMessageEvent value) sendMessage,
    required TResult Function(RoomGetChatMessagesEvent value) getChatMessage,
    required TResult Function(RoomGetImageEvent value) getImage,
    required TResult Function(RoomUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(RoomUpdateFirebaseDataEvent value)
        updateFirestoreData,
  }) {
    return getChatMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomSendMessageEvent value)? sendMessage,
    TResult Function(RoomGetChatMessagesEvent value)? getChatMessage,
    TResult Function(RoomGetImageEvent value)? getImage,
    TResult Function(RoomUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(RoomUpdateFirebaseDataEvent value)? updateFirestoreData,
  }) {
    return getChatMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomSendMessageEvent value)? sendMessage,
    TResult Function(RoomGetChatMessagesEvent value)? getChatMessage,
    TResult Function(RoomGetImageEvent value)? getImage,
    TResult Function(RoomUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(RoomUpdateFirebaseDataEvent value)? updateFirestoreData,
    required TResult orElse(),
  }) {
    if (getChatMessage != null) {
      return getChatMessage(this);
    }
    return orElse();
  }
}

abstract class RoomGetChatMessagesEvent implements RoomEvent {
  const factory RoomGetChatMessagesEvent({required final int limit}) =
      _$RoomGetChatMessagesEvent;

  int get limit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RoomGetChatMessagesEventCopyWith<_$RoomGetChatMessagesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomGetImageEventCopyWith<$Res> {
  factory _$$RoomGetImageEventCopyWith(
          _$RoomGetImageEvent value, $Res Function(_$RoomGetImageEvent) then) =
      __$$RoomGetImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomGetImageEventCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res>
    implements _$$RoomGetImageEventCopyWith<$Res> {
  __$$RoomGetImageEventCopyWithImpl(
      _$RoomGetImageEvent _value, $Res Function(_$RoomGetImageEvent) _then)
      : super(_value, (v) => _then(v as _$RoomGetImageEvent));

  @override
  _$RoomGetImageEvent get _value => super._value as _$RoomGetImageEvent;
}

/// @nodoc

class _$RoomGetImageEvent implements RoomGetImageEvent {
  const _$RoomGetImageEvent();

  @override
  String toString() {
    return 'RoomEvent.getImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomGetImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(int limit) getChatMessage,
    required TResult Function() getImage,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
  }) {
    return getImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content, int type)? sendMessage,
    TResult Function(int limit)? getChatMessage,
    TResult Function()? getImage,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
  }) {
    return getImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, int type)? sendMessage,
    TResult Function(int limit)? getChatMessage,
    TResult Function()? getImage,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomSendMessageEvent value) sendMessage,
    required TResult Function(RoomGetChatMessagesEvent value) getChatMessage,
    required TResult Function(RoomGetImageEvent value) getImage,
    required TResult Function(RoomUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(RoomUpdateFirebaseDataEvent value)
        updateFirestoreData,
  }) {
    return getImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomSendMessageEvent value)? sendMessage,
    TResult Function(RoomGetChatMessagesEvent value)? getChatMessage,
    TResult Function(RoomGetImageEvent value)? getImage,
    TResult Function(RoomUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(RoomUpdateFirebaseDataEvent value)? updateFirestoreData,
  }) {
    return getImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomSendMessageEvent value)? sendMessage,
    TResult Function(RoomGetChatMessagesEvent value)? getChatMessage,
    TResult Function(RoomGetImageEvent value)? getImage,
    TResult Function(RoomUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(RoomUpdateFirebaseDataEvent value)? updateFirestoreData,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(this);
    }
    return orElse();
  }
}

abstract class RoomGetImageEvent implements RoomEvent {
  const factory RoomGetImageEvent() = _$RoomGetImageEvent;
}

/// @nodoc
abstract class _$$RoomUpdateUnreadMessageEventCopyWith<$Res> {
  factory _$$RoomUpdateUnreadMessageEventCopyWith(
          _$RoomUpdateUnreadMessageEvent value,
          $Res Function(_$RoomUpdateUnreadMessageEvent) then) =
      __$$RoomUpdateUnreadMessageEventCopyWithImpl<$Res>;
  $Res call({String docPath, QueryDocumentSnapshot<Object?> chatMessage});
}

/// @nodoc
class __$$RoomUpdateUnreadMessageEventCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res>
    implements _$$RoomUpdateUnreadMessageEventCopyWith<$Res> {
  __$$RoomUpdateUnreadMessageEventCopyWithImpl(
      _$RoomUpdateUnreadMessageEvent _value,
      $Res Function(_$RoomUpdateUnreadMessageEvent) _then)
      : super(_value, (v) => _then(v as _$RoomUpdateUnreadMessageEvent));

  @override
  _$RoomUpdateUnreadMessageEvent get _value =>
      super._value as _$RoomUpdateUnreadMessageEvent;

  @override
  $Res call({
    Object? docPath = freezed,
    Object? chatMessage = freezed,
  }) {
    return _then(_$RoomUpdateUnreadMessageEvent(
      docPath: docPath == freezed
          ? _value.docPath
          : docPath // ignore: cast_nullable_to_non_nullable
              as String,
      chatMessage: chatMessage == freezed
          ? _value.chatMessage
          : chatMessage // ignore: cast_nullable_to_non_nullable
              as QueryDocumentSnapshot<Object?>,
    ));
  }
}

/// @nodoc

class _$RoomUpdateUnreadMessageEvent implements RoomUpdateUnreadMessageEvent {
  const _$RoomUpdateUnreadMessageEvent(
      {required this.docPath, required this.chatMessage});

  @override
  final String docPath;
  @override
  final QueryDocumentSnapshot<Object?> chatMessage;

  @override
  String toString() {
    return 'RoomEvent.updateUnreadMessage(docPath: $docPath, chatMessage: $chatMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomUpdateUnreadMessageEvent &&
            const DeepCollectionEquality().equals(other.docPath, docPath) &&
            const DeepCollectionEquality()
                .equals(other.chatMessage, chatMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(docPath),
      const DeepCollectionEquality().hash(chatMessage));

  @JsonKey(ignore: true)
  @override
  _$$RoomUpdateUnreadMessageEventCopyWith<_$RoomUpdateUnreadMessageEvent>
      get copyWith => __$$RoomUpdateUnreadMessageEventCopyWithImpl<
          _$RoomUpdateUnreadMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(int limit) getChatMessage,
    required TResult Function() getImage,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
  }) {
    return updateUnreadMessage(docPath, chatMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content, int type)? sendMessage,
    TResult Function(int limit)? getChatMessage,
    TResult Function()? getImage,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
  }) {
    return updateUnreadMessage?.call(docPath, chatMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, int type)? sendMessage,
    TResult Function(int limit)? getChatMessage,
    TResult Function()? getImage,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    required TResult orElse(),
  }) {
    if (updateUnreadMessage != null) {
      return updateUnreadMessage(docPath, chatMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomSendMessageEvent value) sendMessage,
    required TResult Function(RoomGetChatMessagesEvent value) getChatMessage,
    required TResult Function(RoomGetImageEvent value) getImage,
    required TResult Function(RoomUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(RoomUpdateFirebaseDataEvent value)
        updateFirestoreData,
  }) {
    return updateUnreadMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomSendMessageEvent value)? sendMessage,
    TResult Function(RoomGetChatMessagesEvent value)? getChatMessage,
    TResult Function(RoomGetImageEvent value)? getImage,
    TResult Function(RoomUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(RoomUpdateFirebaseDataEvent value)? updateFirestoreData,
  }) {
    return updateUnreadMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomSendMessageEvent value)? sendMessage,
    TResult Function(RoomGetChatMessagesEvent value)? getChatMessage,
    TResult Function(RoomGetImageEvent value)? getImage,
    TResult Function(RoomUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(RoomUpdateFirebaseDataEvent value)? updateFirestoreData,
    required TResult orElse(),
  }) {
    if (updateUnreadMessage != null) {
      return updateUnreadMessage(this);
    }
    return orElse();
  }
}

abstract class RoomUpdateUnreadMessageEvent implements RoomEvent {
  const factory RoomUpdateUnreadMessageEvent(
          {required final String docPath,
          required final QueryDocumentSnapshot<Object?> chatMessage}) =
      _$RoomUpdateUnreadMessageEvent;

  String get docPath => throw _privateConstructorUsedError;
  QueryDocumentSnapshot<Object?> get chatMessage =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RoomUpdateUnreadMessageEventCopyWith<_$RoomUpdateUnreadMessageEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomUpdateFirebaseDataEventCopyWith<$Res> {
  factory _$$RoomUpdateFirebaseDataEventCopyWith(
          _$RoomUpdateFirebaseDataEvent value,
          $Res Function(_$RoomUpdateFirebaseDataEvent) then) =
      __$$RoomUpdateFirebaseDataEventCopyWithImpl<$Res>;
  $Res call(
      {String collectionPath, String docPath, Map<String, dynamic> dataUpdate});
}

/// @nodoc
class __$$RoomUpdateFirebaseDataEventCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res>
    implements _$$RoomUpdateFirebaseDataEventCopyWith<$Res> {
  __$$RoomUpdateFirebaseDataEventCopyWithImpl(
      _$RoomUpdateFirebaseDataEvent _value,
      $Res Function(_$RoomUpdateFirebaseDataEvent) _then)
      : super(_value, (v) => _then(v as _$RoomUpdateFirebaseDataEvent));

  @override
  _$RoomUpdateFirebaseDataEvent get _value =>
      super._value as _$RoomUpdateFirebaseDataEvent;

  @override
  $Res call({
    Object? collectionPath = freezed,
    Object? docPath = freezed,
    Object? dataUpdate = freezed,
  }) {
    return _then(_$RoomUpdateFirebaseDataEvent(
      collectionPath: collectionPath == freezed
          ? _value.collectionPath
          : collectionPath // ignore: cast_nullable_to_non_nullable
              as String,
      docPath: docPath == freezed
          ? _value.docPath
          : docPath // ignore: cast_nullable_to_non_nullable
              as String,
      dataUpdate: dataUpdate == freezed
          ? _value._dataUpdate
          : dataUpdate // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$RoomUpdateFirebaseDataEvent implements RoomUpdateFirebaseDataEvent {
  const _$RoomUpdateFirebaseDataEvent(
      {required this.collectionPath,
      required this.docPath,
      required final Map<String, dynamic> dataUpdate})
      : _dataUpdate = dataUpdate;

  @override
  final String collectionPath;
  @override
  final String docPath;
  final Map<String, dynamic> _dataUpdate;
  @override
  Map<String, dynamic> get dataUpdate {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dataUpdate);
  }

  @override
  String toString() {
    return 'RoomEvent.updateFirestoreData(collectionPath: $collectionPath, docPath: $docPath, dataUpdate: $dataUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomUpdateFirebaseDataEvent &&
            const DeepCollectionEquality()
                .equals(other.collectionPath, collectionPath) &&
            const DeepCollectionEquality().equals(other.docPath, docPath) &&
            const DeepCollectionEquality()
                .equals(other._dataUpdate, _dataUpdate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(collectionPath),
      const DeepCollectionEquality().hash(docPath),
      const DeepCollectionEquality().hash(_dataUpdate));

  @JsonKey(ignore: true)
  @override
  _$$RoomUpdateFirebaseDataEventCopyWith<_$RoomUpdateFirebaseDataEvent>
      get copyWith => __$$RoomUpdateFirebaseDataEventCopyWithImpl<
          _$RoomUpdateFirebaseDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(int limit) getChatMessage,
    required TResult Function() getImage,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
  }) {
    return updateFirestoreData(collectionPath, docPath, dataUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String content, int type)? sendMessage,
    TResult Function(int limit)? getChatMessage,
    TResult Function()? getImage,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
  }) {
    return updateFirestoreData?.call(collectionPath, docPath, dataUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String content, int type)? sendMessage,
    TResult Function(int limit)? getChatMessage,
    TResult Function()? getImage,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    required TResult orElse(),
  }) {
    if (updateFirestoreData != null) {
      return updateFirestoreData(collectionPath, docPath, dataUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomSendMessageEvent value) sendMessage,
    required TResult Function(RoomGetChatMessagesEvent value) getChatMessage,
    required TResult Function(RoomGetImageEvent value) getImage,
    required TResult Function(RoomUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(RoomUpdateFirebaseDataEvent value)
        updateFirestoreData,
  }) {
    return updateFirestoreData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomSendMessageEvent value)? sendMessage,
    TResult Function(RoomGetChatMessagesEvent value)? getChatMessage,
    TResult Function(RoomGetImageEvent value)? getImage,
    TResult Function(RoomUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(RoomUpdateFirebaseDataEvent value)? updateFirestoreData,
  }) {
    return updateFirestoreData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomSendMessageEvent value)? sendMessage,
    TResult Function(RoomGetChatMessagesEvent value)? getChatMessage,
    TResult Function(RoomGetImageEvent value)? getImage,
    TResult Function(RoomUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(RoomUpdateFirebaseDataEvent value)? updateFirestoreData,
    required TResult orElse(),
  }) {
    if (updateFirestoreData != null) {
      return updateFirestoreData(this);
    }
    return orElse();
  }
}

abstract class RoomUpdateFirebaseDataEvent implements RoomEvent {
  const factory RoomUpdateFirebaseDataEvent(
          {required final String collectionPath,
          required final String docPath,
          required final Map<String, dynamic> dataUpdate}) =
      _$RoomUpdateFirebaseDataEvent;

  String get collectionPath => throw _privateConstructorUsedError;
  String get docPath => throw _privateConstructorUsedError;
  Map<String, dynamic> get dataUpdate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$RoomUpdateFirebaseDataEventCopyWith<_$RoomUpdateFirebaseDataEvent>
      get copyWith => throw _privateConstructorUsedError;
}

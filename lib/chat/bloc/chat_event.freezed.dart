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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String collectionPath, int limit, String? textSearch)
        getUsers,
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
    required TResult Function(int limit) getChatMessage,
    required TResult Function(int limit, String? textSearch)
        getUsersAlreadyInChat,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function() getImage,
    required TResult Function(String peerId) uploadImageFiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatGetUsersEvent value) getUsers,
    required TResult Function(ChatSendMessageEvent value) sendMessage,
    required TResult Function(ChatUpdateFirebaseDataEvent value)
        updateFirestoreData,
    required TResult Function(ChatGetChatMessagesEvent value) getChatMessage,
    required TResult Function(ChatGetUsersAlreadyInChatEvent value)
        getUsersAlreadyInChat,
    required TResult Function(ChatUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(ChatGetImageEvent value) getImage,
    required TResult Function(ChatUploadImageFilesEvent value) uploadImageFiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class _$$ChatGetUsersEventCopyWith<$Res> {
  factory _$$ChatGetUsersEventCopyWith(
          _$ChatGetUsersEvent value, $Res Function(_$ChatGetUsersEvent) then) =
      __$$ChatGetUsersEventCopyWithImpl<$Res>;
  $Res call({String collectionPath, int limit, String? textSearch});
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
    Object? collectionPath = freezed,
    Object? limit = freezed,
    Object? textSearch = freezed,
  }) {
    return _then(_$ChatGetUsersEvent(
      collectionPath: collectionPath == freezed
          ? _value.collectionPath
          : collectionPath // ignore: cast_nullable_to_non_nullable
              as String,
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
  const _$ChatGetUsersEvent(
      {required this.collectionPath, required this.limit, this.textSearch});

  @override
  final String collectionPath;
  @override
  final int limit;
  @override
  final String? textSearch;

  @override
  String toString() {
    return 'ChatEvent.getUsers(collectionPath: $collectionPath, limit: $limit, textSearch: $textSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatGetUsersEvent &&
            const DeepCollectionEquality()
                .equals(other.collectionPath, collectionPath) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality()
                .equals(other.textSearch, textSearch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(collectionPath),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(textSearch));

  @JsonKey(ignore: true)
  @override
  _$$ChatGetUsersEventCopyWith<_$ChatGetUsersEvent> get copyWith =>
      __$$ChatGetUsersEventCopyWithImpl<_$ChatGetUsersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String collectionPath, int limit, String? textSearch)
        getUsers,
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
    required TResult Function(int limit) getChatMessage,
    required TResult Function(int limit, String? textSearch)
        getUsersAlreadyInChat,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function() getImage,
    required TResult Function(String peerId) uploadImageFiles,
  }) {
    return getUsers(collectionPath, limit, textSearch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
  }) {
    return getUsers?.call(collectionPath, limit, textSearch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(collectionPath, limit, textSearch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatGetUsersEvent value) getUsers,
    required TResult Function(ChatSendMessageEvent value) sendMessage,
    required TResult Function(ChatUpdateFirebaseDataEvent value)
        updateFirestoreData,
    required TResult Function(ChatGetChatMessagesEvent value) getChatMessage,
    required TResult Function(ChatGetUsersAlreadyInChatEvent value)
        getUsersAlreadyInChat,
    required TResult Function(ChatUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(ChatGetImageEvent value) getImage,
    required TResult Function(ChatUploadImageFilesEvent value) uploadImageFiles,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
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
      {required final String collectionPath,
      required final int limit,
      final String? textSearch}) = _$ChatGetUsersEvent;

  String get collectionPath => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String? get textSearch => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChatGetUsersEventCopyWith<_$ChatGetUsersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSendMessageEventCopyWith<$Res> {
  factory _$$ChatSendMessageEventCopyWith(_$ChatSendMessageEvent value,
          $Res Function(_$ChatSendMessageEvent) then) =
      __$$ChatSendMessageEventCopyWithImpl<$Res>;
  $Res call({String content, int type});
}

/// @nodoc
class __$$ChatSendMessageEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$ChatSendMessageEventCopyWith<$Res> {
  __$$ChatSendMessageEventCopyWithImpl(_$ChatSendMessageEvent _value,
      $Res Function(_$ChatSendMessageEvent) _then)
      : super(_value, (v) => _then(v as _$ChatSendMessageEvent));

  @override
  _$ChatSendMessageEvent get _value => super._value as _$ChatSendMessageEvent;

  @override
  $Res call({
    Object? content = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ChatSendMessageEvent(
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

class _$ChatSendMessageEvent implements ChatSendMessageEvent {
  const _$ChatSendMessageEvent({required this.content, required this.type});

  @override
  final String content;
  @override
  final int type;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(content: $content, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSendMessageEvent &&
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
  _$$ChatSendMessageEventCopyWith<_$ChatSendMessageEvent> get copyWith =>
      __$$ChatSendMessageEventCopyWithImpl<_$ChatSendMessageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String collectionPath, int limit, String? textSearch)
        getUsers,
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
    required TResult Function(int limit) getChatMessage,
    required TResult Function(int limit, String? textSearch)
        getUsersAlreadyInChat,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function() getImage,
    required TResult Function(String peerId) uploadImageFiles,
  }) {
    return sendMessage(content, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
  }) {
    return sendMessage?.call(content, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
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
    required TResult Function(ChatGetUsersEvent value) getUsers,
    required TResult Function(ChatSendMessageEvent value) sendMessage,
    required TResult Function(ChatUpdateFirebaseDataEvent value)
        updateFirestoreData,
    required TResult Function(ChatGetChatMessagesEvent value) getChatMessage,
    required TResult Function(ChatGetUsersAlreadyInChatEvent value)
        getUsersAlreadyInChat,
    required TResult Function(ChatUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(ChatGetImageEvent value) getImage,
    required TResult Function(ChatUploadImageFilesEvent value) uploadImageFiles,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class ChatSendMessageEvent implements ChatEvent {
  const factory ChatSendMessageEvent(
      {required final String content,
      required final int type}) = _$ChatSendMessageEvent;

  String get content => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChatSendMessageEventCopyWith<_$ChatSendMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatUpdateFirebaseDataEventCopyWith<$Res> {
  factory _$$ChatUpdateFirebaseDataEventCopyWith(
          _$ChatUpdateFirebaseDataEvent value,
          $Res Function(_$ChatUpdateFirebaseDataEvent) then) =
      __$$ChatUpdateFirebaseDataEventCopyWithImpl<$Res>;
  $Res call(
      {String collectionPath, String docPath, Map<String, dynamic> dataUpdate});
}

/// @nodoc
class __$$ChatUpdateFirebaseDataEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$ChatUpdateFirebaseDataEventCopyWith<$Res> {
  __$$ChatUpdateFirebaseDataEventCopyWithImpl(
      _$ChatUpdateFirebaseDataEvent _value,
      $Res Function(_$ChatUpdateFirebaseDataEvent) _then)
      : super(_value, (v) => _then(v as _$ChatUpdateFirebaseDataEvent));

  @override
  _$ChatUpdateFirebaseDataEvent get _value =>
      super._value as _$ChatUpdateFirebaseDataEvent;

  @override
  $Res call({
    Object? collectionPath = freezed,
    Object? docPath = freezed,
    Object? dataUpdate = freezed,
  }) {
    return _then(_$ChatUpdateFirebaseDataEvent(
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

class _$ChatUpdateFirebaseDataEvent implements ChatUpdateFirebaseDataEvent {
  const _$ChatUpdateFirebaseDataEvent(
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
    return 'ChatEvent.updateFirestoreData(collectionPath: $collectionPath, docPath: $docPath, dataUpdate: $dataUpdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUpdateFirebaseDataEvent &&
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
  _$$ChatUpdateFirebaseDataEventCopyWith<_$ChatUpdateFirebaseDataEvent>
      get copyWith => __$$ChatUpdateFirebaseDataEventCopyWithImpl<
          _$ChatUpdateFirebaseDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String collectionPath, int limit, String? textSearch)
        getUsers,
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
    required TResult Function(int limit) getChatMessage,
    required TResult Function(int limit, String? textSearch)
        getUsersAlreadyInChat,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function() getImage,
    required TResult Function(String peerId) uploadImageFiles,
  }) {
    return updateFirestoreData(collectionPath, docPath, dataUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
  }) {
    return updateFirestoreData?.call(collectionPath, docPath, dataUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
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
    required TResult Function(ChatGetUsersEvent value) getUsers,
    required TResult Function(ChatSendMessageEvent value) sendMessage,
    required TResult Function(ChatUpdateFirebaseDataEvent value)
        updateFirestoreData,
    required TResult Function(ChatGetChatMessagesEvent value) getChatMessage,
    required TResult Function(ChatGetUsersAlreadyInChatEvent value)
        getUsersAlreadyInChat,
    required TResult Function(ChatUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(ChatGetImageEvent value) getImage,
    required TResult Function(ChatUploadImageFilesEvent value) uploadImageFiles,
  }) {
    return updateFirestoreData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
  }) {
    return updateFirestoreData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
    required TResult orElse(),
  }) {
    if (updateFirestoreData != null) {
      return updateFirestoreData(this);
    }
    return orElse();
  }
}

abstract class ChatUpdateFirebaseDataEvent implements ChatEvent {
  const factory ChatUpdateFirebaseDataEvent(
          {required final String collectionPath,
          required final String docPath,
          required final Map<String, dynamic> dataUpdate}) =
      _$ChatUpdateFirebaseDataEvent;

  String get collectionPath => throw _privateConstructorUsedError;
  String get docPath => throw _privateConstructorUsedError;
  Map<String, dynamic> get dataUpdate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChatUpdateFirebaseDataEventCopyWith<_$ChatUpdateFirebaseDataEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatGetChatMessagesEventCopyWith<$Res> {
  factory _$$ChatGetChatMessagesEventCopyWith(_$ChatGetChatMessagesEvent value,
          $Res Function(_$ChatGetChatMessagesEvent) then) =
      __$$ChatGetChatMessagesEventCopyWithImpl<$Res>;
  $Res call({int limit});
}

/// @nodoc
class __$$ChatGetChatMessagesEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$ChatGetChatMessagesEventCopyWith<$Res> {
  __$$ChatGetChatMessagesEventCopyWithImpl(_$ChatGetChatMessagesEvent _value,
      $Res Function(_$ChatGetChatMessagesEvent) _then)
      : super(_value, (v) => _then(v as _$ChatGetChatMessagesEvent));

  @override
  _$ChatGetChatMessagesEvent get _value =>
      super._value as _$ChatGetChatMessagesEvent;

  @override
  $Res call({
    Object? limit = freezed,
  }) {
    return _then(_$ChatGetChatMessagesEvent(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatGetChatMessagesEvent implements ChatGetChatMessagesEvent {
  const _$ChatGetChatMessagesEvent({required this.limit});

  @override
  final int limit;

  @override
  String toString() {
    return 'ChatEvent.getChatMessage(limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatGetChatMessagesEvent &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$$ChatGetChatMessagesEventCopyWith<_$ChatGetChatMessagesEvent>
      get copyWith =>
          __$$ChatGetChatMessagesEventCopyWithImpl<_$ChatGetChatMessagesEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String collectionPath, int limit, String? textSearch)
        getUsers,
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
    required TResult Function(int limit) getChatMessage,
    required TResult Function(int limit, String? textSearch)
        getUsersAlreadyInChat,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function() getImage,
    required TResult Function(String peerId) uploadImageFiles,
  }) {
    return getChatMessage(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
  }) {
    return getChatMessage?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
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
    required TResult Function(ChatGetUsersEvent value) getUsers,
    required TResult Function(ChatSendMessageEvent value) sendMessage,
    required TResult Function(ChatUpdateFirebaseDataEvent value)
        updateFirestoreData,
    required TResult Function(ChatGetChatMessagesEvent value) getChatMessage,
    required TResult Function(ChatGetUsersAlreadyInChatEvent value)
        getUsersAlreadyInChat,
    required TResult Function(ChatUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(ChatGetImageEvent value) getImage,
    required TResult Function(ChatUploadImageFilesEvent value) uploadImageFiles,
  }) {
    return getChatMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
  }) {
    return getChatMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
    required TResult orElse(),
  }) {
    if (getChatMessage != null) {
      return getChatMessage(this);
    }
    return orElse();
  }
}

abstract class ChatGetChatMessagesEvent implements ChatEvent {
  const factory ChatGetChatMessagesEvent({required final int limit}) =
      _$ChatGetChatMessagesEvent;

  int get limit => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChatGetChatMessagesEventCopyWith<_$ChatGetChatMessagesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatGetUsersAlreadyInChatEventCopyWith<$Res> {
  factory _$$ChatGetUsersAlreadyInChatEventCopyWith(
          _$ChatGetUsersAlreadyInChatEvent value,
          $Res Function(_$ChatGetUsersAlreadyInChatEvent) then) =
      __$$ChatGetUsersAlreadyInChatEventCopyWithImpl<$Res>;
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
    required TResult Function(
            String collectionPath, int limit, String? textSearch)
        getUsers,
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
    required TResult Function(int limit) getChatMessage,
    required TResult Function(int limit, String? textSearch)
        getUsersAlreadyInChat,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function() getImage,
    required TResult Function(String peerId) uploadImageFiles,
  }) {
    return getUsersAlreadyInChat(limit, textSearch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
  }) {
    return getUsersAlreadyInChat?.call(limit, textSearch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
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
    required TResult Function(ChatSendMessageEvent value) sendMessage,
    required TResult Function(ChatUpdateFirebaseDataEvent value)
        updateFirestoreData,
    required TResult Function(ChatGetChatMessagesEvent value) getChatMessage,
    required TResult Function(ChatGetUsersAlreadyInChatEvent value)
        getUsersAlreadyInChat,
    required TResult Function(ChatUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(ChatGetImageEvent value) getImage,
    required TResult Function(ChatUploadImageFilesEvent value) uploadImageFiles,
  }) {
    return getUsersAlreadyInChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
  }) {
    return getUsersAlreadyInChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
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

  int get limit => throw _privateConstructorUsedError;
  String? get textSearch => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChatGetUsersAlreadyInChatEventCopyWith<_$ChatGetUsersAlreadyInChatEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatUpdateUnreadMessageEventCopyWith<$Res> {
  factory _$$ChatUpdateUnreadMessageEventCopyWith(
          _$ChatUpdateUnreadMessageEvent value,
          $Res Function(_$ChatUpdateUnreadMessageEvent) then) =
      __$$ChatUpdateUnreadMessageEventCopyWithImpl<$Res>;
  $Res call({String docPath, QueryDocumentSnapshot<Object?> chatMessage});
}

/// @nodoc
class __$$ChatUpdateUnreadMessageEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$ChatUpdateUnreadMessageEventCopyWith<$Res> {
  __$$ChatUpdateUnreadMessageEventCopyWithImpl(
      _$ChatUpdateUnreadMessageEvent _value,
      $Res Function(_$ChatUpdateUnreadMessageEvent) _then)
      : super(_value, (v) => _then(v as _$ChatUpdateUnreadMessageEvent));

  @override
  _$ChatUpdateUnreadMessageEvent get _value =>
      super._value as _$ChatUpdateUnreadMessageEvent;

  @override
  $Res call({
    Object? docPath = freezed,
    Object? chatMessage = freezed,
  }) {
    return _then(_$ChatUpdateUnreadMessageEvent(
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

class _$ChatUpdateUnreadMessageEvent implements ChatUpdateUnreadMessageEvent {
  const _$ChatUpdateUnreadMessageEvent(
      {required this.docPath, required this.chatMessage});

  @override
  final String docPath;
  @override
  final QueryDocumentSnapshot<Object?> chatMessage;

  @override
  String toString() {
    return 'ChatEvent.updateUnreadMessage(docPath: $docPath, chatMessage: $chatMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUpdateUnreadMessageEvent &&
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
  _$$ChatUpdateUnreadMessageEventCopyWith<_$ChatUpdateUnreadMessageEvent>
      get copyWith => __$$ChatUpdateUnreadMessageEventCopyWithImpl<
          _$ChatUpdateUnreadMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String collectionPath, int limit, String? textSearch)
        getUsers,
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
    required TResult Function(int limit) getChatMessage,
    required TResult Function(int limit, String? textSearch)
        getUsersAlreadyInChat,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function() getImage,
    required TResult Function(String peerId) uploadImageFiles,
  }) {
    return updateUnreadMessage(docPath, chatMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
  }) {
    return updateUnreadMessage?.call(docPath, chatMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
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
    required TResult Function(ChatGetUsersEvent value) getUsers,
    required TResult Function(ChatSendMessageEvent value) sendMessage,
    required TResult Function(ChatUpdateFirebaseDataEvent value)
        updateFirestoreData,
    required TResult Function(ChatGetChatMessagesEvent value) getChatMessage,
    required TResult Function(ChatGetUsersAlreadyInChatEvent value)
        getUsersAlreadyInChat,
    required TResult Function(ChatUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(ChatGetImageEvent value) getImage,
    required TResult Function(ChatUploadImageFilesEvent value) uploadImageFiles,
  }) {
    return updateUnreadMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
  }) {
    return updateUnreadMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
    required TResult orElse(),
  }) {
    if (updateUnreadMessage != null) {
      return updateUnreadMessage(this);
    }
    return orElse();
  }
}

abstract class ChatUpdateUnreadMessageEvent implements ChatEvent {
  const factory ChatUpdateUnreadMessageEvent(
          {required final String docPath,
          required final QueryDocumentSnapshot<Object?> chatMessage}) =
      _$ChatUpdateUnreadMessageEvent;

  String get docPath => throw _privateConstructorUsedError;
  QueryDocumentSnapshot<Object?> get chatMessage =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChatUpdateUnreadMessageEventCopyWith<_$ChatUpdateUnreadMessageEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatGetImageEventCopyWith<$Res> {
  factory _$$ChatGetImageEventCopyWith(
          _$ChatGetImageEvent value, $Res Function(_$ChatGetImageEvent) then) =
      __$$ChatGetImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatGetImageEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$ChatGetImageEventCopyWith<$Res> {
  __$$ChatGetImageEventCopyWithImpl(
      _$ChatGetImageEvent _value, $Res Function(_$ChatGetImageEvent) _then)
      : super(_value, (v) => _then(v as _$ChatGetImageEvent));

  @override
  _$ChatGetImageEvent get _value => super._value as _$ChatGetImageEvent;
}

/// @nodoc

class _$ChatGetImageEvent implements ChatGetImageEvent {
  const _$ChatGetImageEvent();

  @override
  String toString() {
    return 'ChatEvent.getImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatGetImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String collectionPath, int limit, String? textSearch)
        getUsers,
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
    required TResult Function(int limit) getChatMessage,
    required TResult Function(int limit, String? textSearch)
        getUsersAlreadyInChat,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function() getImage,
    required TResult Function(String peerId) uploadImageFiles,
  }) {
    return getImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
  }) {
    return getImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
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
    required TResult Function(ChatGetUsersEvent value) getUsers,
    required TResult Function(ChatSendMessageEvent value) sendMessage,
    required TResult Function(ChatUpdateFirebaseDataEvent value)
        updateFirestoreData,
    required TResult Function(ChatGetChatMessagesEvent value) getChatMessage,
    required TResult Function(ChatGetUsersAlreadyInChatEvent value)
        getUsersAlreadyInChat,
    required TResult Function(ChatUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(ChatGetImageEvent value) getImage,
    required TResult Function(ChatUploadImageFilesEvent value) uploadImageFiles,
  }) {
    return getImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
  }) {
    return getImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
    required TResult orElse(),
  }) {
    if (getImage != null) {
      return getImage(this);
    }
    return orElse();
  }
}

abstract class ChatGetImageEvent implements ChatEvent {
  const factory ChatGetImageEvent() = _$ChatGetImageEvent;
}

/// @nodoc
abstract class _$$ChatUploadImageFilesEventCopyWith<$Res> {
  factory _$$ChatUploadImageFilesEventCopyWith(
          _$ChatUploadImageFilesEvent value,
          $Res Function(_$ChatUploadImageFilesEvent) then) =
      __$$ChatUploadImageFilesEventCopyWithImpl<$Res>;
  $Res call({String peerId});
}

/// @nodoc
class __$$ChatUploadImageFilesEventCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$$ChatUploadImageFilesEventCopyWith<$Res> {
  __$$ChatUploadImageFilesEventCopyWithImpl(_$ChatUploadImageFilesEvent _value,
      $Res Function(_$ChatUploadImageFilesEvent) _then)
      : super(_value, (v) => _then(v as _$ChatUploadImageFilesEvent));

  @override
  _$ChatUploadImageFilesEvent get _value =>
      super._value as _$ChatUploadImageFilesEvent;

  @override
  $Res call({
    Object? peerId = freezed,
  }) {
    return _then(_$ChatUploadImageFilesEvent(
      peerId: peerId == freezed
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatUploadImageFilesEvent implements ChatUploadImageFilesEvent {
  const _$ChatUploadImageFilesEvent({required this.peerId});

  @override
  final String peerId;

  @override
  String toString() {
    return 'ChatEvent.uploadImageFiles(peerId: $peerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUploadImageFilesEvent &&
            const DeepCollectionEquality().equals(other.peerId, peerId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(peerId));

  @JsonKey(ignore: true)
  @override
  _$$ChatUploadImageFilesEventCopyWith<_$ChatUploadImageFilesEvent>
      get copyWith => __$$ChatUploadImageFilesEventCopyWithImpl<
          _$ChatUploadImageFilesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String collectionPath, int limit, String? textSearch)
        getUsers,
    required TResult Function(String content, int type) sendMessage,
    required TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)
        updateFirestoreData,
    required TResult Function(int limit) getChatMessage,
    required TResult Function(int limit, String? textSearch)
        getUsersAlreadyInChat,
    required TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)
        updateUnreadMessage,
    required TResult Function() getImage,
    required TResult Function(String peerId) uploadImageFiles,
  }) {
    return uploadImageFiles(peerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
  }) {
    return uploadImageFiles?.call(peerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionPath, int limit, String? textSearch)?
        getUsers,
    TResult Function(String content, int type)? sendMessage,
    TResult Function(String collectionPath, String docPath,
            Map<String, dynamic> dataUpdate)?
        updateFirestoreData,
    TResult Function(int limit)? getChatMessage,
    TResult Function(int limit, String? textSearch)? getUsersAlreadyInChat,
    TResult Function(
            String docPath, QueryDocumentSnapshot<Object?> chatMessage)?
        updateUnreadMessage,
    TResult Function()? getImage,
    TResult Function(String peerId)? uploadImageFiles,
    required TResult orElse(),
  }) {
    if (uploadImageFiles != null) {
      return uploadImageFiles(peerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatGetUsersEvent value) getUsers,
    required TResult Function(ChatSendMessageEvent value) sendMessage,
    required TResult Function(ChatUpdateFirebaseDataEvent value)
        updateFirestoreData,
    required TResult Function(ChatGetChatMessagesEvent value) getChatMessage,
    required TResult Function(ChatGetUsersAlreadyInChatEvent value)
        getUsersAlreadyInChat,
    required TResult Function(ChatUpdateUnreadMessageEvent value)
        updateUnreadMessage,
    required TResult Function(ChatGetImageEvent value) getImage,
    required TResult Function(ChatUploadImageFilesEvent value) uploadImageFiles,
  }) {
    return uploadImageFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
  }) {
    return uploadImageFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatGetUsersEvent value)? getUsers,
    TResult Function(ChatSendMessageEvent value)? sendMessage,
    TResult Function(ChatUpdateFirebaseDataEvent value)? updateFirestoreData,
    TResult Function(ChatGetChatMessagesEvent value)? getChatMessage,
    TResult Function(ChatGetUsersAlreadyInChatEvent value)?
        getUsersAlreadyInChat,
    TResult Function(ChatUpdateUnreadMessageEvent value)? updateUnreadMessage,
    TResult Function(ChatGetImageEvent value)? getImage,
    TResult Function(ChatUploadImageFilesEvent value)? uploadImageFiles,
    required TResult orElse(),
  }) {
    if (uploadImageFiles != null) {
      return uploadImageFiles(this);
    }
    return orElse();
  }
}

abstract class ChatUploadImageFilesEvent implements ChatEvent {
  const factory ChatUploadImageFilesEvent({required final String peerId}) =
      _$ChatUploadImageFilesEvent;

  String get peerId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChatUploadImageFilesEventCopyWith<_$ChatUploadImageFilesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

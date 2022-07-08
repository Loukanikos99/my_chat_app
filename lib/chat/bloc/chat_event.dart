import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.freezed.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.getUsers({
    required String collectionPath,
    required int limit,
    String? textSearch,
  }) = ChatGetUsersEvent;

  const factory ChatEvent.sendMessage({
    required String content,
    required int type,
  }) = ChatSendMessageEvent;

  const factory ChatEvent.updateFirestoreData({
    required String collectionPath,
    required String docPath,
    required Map<String, dynamic> dataUpdate,
  }) = ChatUpdateFirebaseDataEvent;

  const factory ChatEvent.getChatMessage({
    required int limit,
  }) = ChatGetChatMessagesEvent;

  const factory ChatEvent.getUsersAlreadyInChat({
    required int limit,
    String? textSearch,
  }) = ChatGetUsersAlreadyInChatEvent;

  const factory ChatEvent.updateUnreadMessage({
    required String docPath,
    required QueryDocumentSnapshot<Object?> chatMessage,
  }) = ChatUpdateUnreadMessageEvent;

  const factory ChatEvent.getImage() = ChatGetImageEvent;
  const factory ChatEvent.uploadImageFiles({required String peerId}) =
      ChatUploadImageFilesEvent;
}

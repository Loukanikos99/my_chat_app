import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_event.freezed.dart';

@freezed
class RoomEvent with _$RoomEvent {
  const factory RoomEvent.sendMessage({
    required String content,
    required int type,
  }) = RoomSendMessageEvent;

  const factory RoomEvent.getChatMessage({
    required int limit,
  }) = RoomGetChatMessagesEvent;

  const factory RoomEvent.getImage() = RoomGetImageEvent;

  const factory RoomEvent.updateUnreadMessage({
    required String docPath,
    required QueryDocumentSnapshot<Object?> chatMessage,
  }) = RoomUpdateUnreadMessageEvent;

  const factory RoomEvent.updateFirestoreData({
    required String collectionPath,
    required String docPath,
    required Map<String, dynamic> dataUpdate,
  }) = RoomUpdateFirebaseDataEvent;
}

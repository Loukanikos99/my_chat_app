import 'package:chat_app_client/models/chat_messaging_model.dart';
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
    required ChatMessage chatMessage,
  }) = RoomUpdateUnreadMessageEvent;

  const factory RoomEvent.updateFirestoreData({
    required String collectionPath,
    required String docPath,
    required Map<String, dynamic> dataUpdate,
  }) = RoomUpdateFirebaseDataEvent;
}

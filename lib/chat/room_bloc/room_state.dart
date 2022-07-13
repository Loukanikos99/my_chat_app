import 'package:chat_client_repository/models/chat_messaging_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_state.freezed.dart';

@freezed
class RoomState with _$RoomState {
  const factory RoomState.initial() = RoomStateInitial;

  const factory RoomState.loading() = RoomStateLoading;

  const factory RoomState.loaded() = RoomStateLoaded;

  const factory RoomState.messagesloaded({
    required Stream<List<ChatMessage>> messages,
  }) = RoomStateMessaggesMessaggesLoaded;

  const factory RoomState.failed() = RoomStateFailed;
}

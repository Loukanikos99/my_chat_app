import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_state.freezed.dart';

@freezed
class RoomState with _$RoomState {
  const factory RoomState.initial() = RoomStateInitial;

  const factory RoomState.loading() = RoomStateLoading;

  const factory RoomState.loaded() = RoomStateLoaded;

  const factory RoomState.messagesloaded({
    required Stream<QuerySnapshot<Object?>> messages,
  }) = RoomStateMessaggesMessaggesLoaded;

  const factory RoomState.failed() = RoomStateFailed;
}

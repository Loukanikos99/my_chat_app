import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.freezed.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.getUsers({
    required int limit,
    String? textSearch,
  }) = ChatGetUsersEvent;

  const factory ChatEvent.getUsersAlreadyWithChat({
    required int limit,
    String? textSearch,
  }) = ChatGetUsersAlreadyWithChatEvent;
}

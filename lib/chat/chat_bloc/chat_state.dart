import 'package:chat_app_client/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = ChatStateInitial;

  const factory ChatState.loading() = ChatStateLoading;

  const factory ChatState.usersLoaded({
    required Stream<List<User>> users,
  }) = ChatStateUsersLoaded;

  const factory ChatState.failed(String errorMsg) = ChatStateFailed;
}

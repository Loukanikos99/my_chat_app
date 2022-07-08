import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = ChatStateInitial;

  const factory ChatState.loading() = ChatStateLoading;

  const factory ChatState.success() = ChatStateSuccess;

  const factory ChatState.failed(String errorMsg) = ChatStateFailed;
}

import 'package:chat_client_service/chat_client_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_client_repository_failures.freezed.dart';

/// ChatClientRepositoryFailures contains all the possible error that can occur.
@freezed
class ChatClientRepositoryFailures with _$ChatClientRepositoryFailures {
  /// If the error could't be indentificated.
  const factory ChatClientRepositoryFailures.unknown() =
      ChatClientRepositoryUnknownFailure;

  /// If the error is related to a Service issue.
  const factory ChatClientRepositoryFailures.serviceFailure(
    ChatClientServiceFailures serviceFailure,
  ) = ChatClientRepositoryServiceFailure;

  /// If the error is related to a register issue.
  const factory ChatClientRepositoryFailures.register() =
      ChatClientRepositoryRegisterFailure;

  /// If the error is related to a GoogleCredentials issue.
  const factory ChatClientRepositoryFailures.googleCredentials() =
      ChatClientRepositoryGoogleCredentialsFailure;

  /// If the error is related to a Json Serialization issue.
  const factory ChatClientRepositoryFailures.serialization() =
      ChatClientRepositorySerializationFailure;

  /// If the error is related to a bad Credentials issue.
  const factory ChatClientRepositoryFailures.badCredentials() =
      ChatClientRepositoryBadCredentialsFailure;

  /// If the error is that the user couldn't signout.
  const factory ChatClientRepositoryFailures.couldntsignout() =
      ChatClientRepositoryCouldntSignoutFailure;
}

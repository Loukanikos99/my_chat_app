import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_client_service_failures.freezed.dart';

/// ChatClientServiceFailures contains all the possible error that can occur.
@freezed
class ChatClientServiceFailures with _$ChatClientServiceFailures {
  /// If the error is related to a not identificated issue.
  const factory ChatClientServiceFailures.failure() = ChatClientServiceFailure;

  /// If the error is related to a not knowing issue.
  const factory ChatClientServiceFailures.unknown() =
      ChatClientServiceUnknownFailure;

  /// If the error is related to a lack of data issue.
  const factory ChatClientServiceFailures.noData() =
      ChatClientServiceNoDataFailure;

  /// If the error is related to the process of create a User issue.
  const factory ChatClientServiceFailures.errorCreatingUser() =
      ChatClientServiceErrorCreatingUserFailure;

  /// If the error is related to a Json serialization issue.
  const factory ChatClientServiceFailures.serialization() =
      ChatClientServiceSerializationFailure;

  /// If the error is related to a bad credentials issue.
  const factory ChatClientServiceFailures.badCredentials() =
      ChatClientServiceBadCredentialsFailure;
}

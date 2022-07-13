import 'package:chat_client_repository/chat_app_client.dart';
import 'package:chat_client_service/chat_client_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

/// AuthFailures contains all the possible error that can occur.
@freezed
class AuthFailures with _$AuthFailures {
  /// If the error is related to an Unknow issue.
  const factory AuthFailures.failure(
    String errorMsg,
  ) = AuthFailure;

  /// If the error is related to a Service issue.
  const factory AuthFailures.serviceFailure(
    ChatClientServiceFailures serviceFailure,
  ) = AuthServiceFailure;

  /// If the error is related to a Repository issue.
  const factory AuthFailures.repositoryFailure(
    ChatClientRepositoryFailures repositoryFailure,
  ) = AuthRepositoryFailure;
}

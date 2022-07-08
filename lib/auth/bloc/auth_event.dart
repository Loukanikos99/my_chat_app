import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn({
    required String username,
    required String password,
  }) = AuthSignInEvent;

  const factory AuthEvent.signOut() = AuthSignOutEvent;

  const factory AuthEvent.register({
    required String email,
    required String password,
    required String name,
    String? picture,
  }) = AuthRegisterEvent;
}

import 'package:chat_client_service/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_chat_app/auth/auth_failures/auth_failures.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthStateInitial;

  const factory AuthState.loading() = AuthStateLoading;

  const factory AuthState.loadedProfileImage({required String imageFilePath}) =
      AuthStateLoadedProfileImage;

  const factory AuthState.authenticated({required User user}) =
      AuthStateAuthenticated;

  const factory AuthState.unauthenticated() = AuthStateUnauthenticated;

  // TODO Cuando este resuelto lo del HydratedBloc descomentar esta linea.
  // const factory AuthState.failed({required AuthFailures failure}) =
  //     AuthStateFailed;

  const factory AuthState.failed() = AuthStateFailed;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}

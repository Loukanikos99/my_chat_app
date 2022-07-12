import 'package:chat_app_client/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

  const factory AuthState.failed(String errorMsg) = AuthStateFailed;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}

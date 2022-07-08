import 'package:chat_app_client/chat_app_client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_event.dart';
import 'package:my_chat_app/auth/bloc/auth_state.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.chatAppClient,
  }) : super(const AuthState.initial()) {
    on<AuthSignInEvent>(_onSignIn);
    on<AuthSignOutEvent>(_onSignOut);
    on<AuthRegisterEvent>(_onRegisterEvent);
  }

  final ChatAppClient chatAppClient;

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state.toJson();
  }

  Future<void> _onSignIn(
    AuthSignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final user = await chatAppClient.login(
        event.username,
        event.password,
      );

      if (user == null) {
        emit(const AuthState.failed(''));
        return;
      }

      emit(AuthState.authenticated(user: user));
    } catch (e) {
      emit(AuthState.failed('$e'));
    }
  }

  Future<void> _onRegisterEvent(
    AuthRegisterEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());

      final user = await chatAppClient.registerFirebase(
        name: event.name,
        email: event.email,
        password: event.password,
        picture: event.picture,
      );
      await chatAppClient.updateOrRegister(user: user!);
      emit(AuthState.authenticated(user: user));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
      } else if (e.code == 'network-request-failed') {
      } else {}
      emit(const AuthState.failed(''));
    } catch (_) {
      emit(const AuthState.unauthenticated());
    }
  }

  void _onSignOut(
    AuthSignOutEvent event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthState.unauthenticated());
  }
}

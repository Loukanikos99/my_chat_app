import 'dart:io';

import 'package:chat_app_client/chat_app_client.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_chat_app/auth/bloc/auth_event.dart';
import 'package:my_chat_app/auth/bloc/auth_state.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.chatAppClient,
  }) : super(const AuthState.initial()) {
    on<AuthSignInEvent>(_onSignIn);
    on<AuthSignOutEvent>(_onSignOut);
    on<AuthRegisterEvent>(_onRegister);
    on<AuthGoogleSignInEvent>(_onGoogleSignIn);
    on<AuthGetProfileImageEvent>(_onGetProfileImage);
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

  Future<void> _onGoogleSignIn(
    AuthGoogleSignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final _googleSignIn = GoogleSignIn(scopes: ['email']);
      final googleSignInAccount = await _googleSignIn.signIn();

      if (googleSignInAccount == null) {
        await Fluttertoast.showToast(msg: 'Error 1');
        return;
      }

      final auth = await googleSignInAccount.authentication;
      final user = await chatAppClient.loginFirebaseGoogle(
        token: auth.accessToken ?? '',
      );
      if (user != null) {
        emit(AuthState.authenticated(user: user));
        return;
      }
      emit(const AuthState.initial());
    } catch (err) {
      emit(const AuthState.failed(''));
      await Fluttertoast.showToast(
        msg: 'Error 2',
      );
    }
  }

  Future<void> _onRegister(
    AuthRegisterEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final picture = await _getImageUrl();
      final user = await chatAppClient.registerFirebase(
        name: event.name,
        email: event.email,
        password: event.password,
        picture: picture,
      );
      await chatAppClient.updateOrRegister(user: user!);
      emit(AuthState.authenticated(user: user));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        emit(const AuthState.failed('Este email ya esta registrado.'));
        return;
      }
      if (e.code == 'network-request-failed') {
        emit(const AuthState.failed('Falló la petición.'));
        return;
      }
    } catch (_) {
      emit(const AuthState.unauthenticated());
    }
  }

  Future<String?> _getImageUrl() async {
    final firebaseStorage = FirebaseStorage.instance;
    if (imageFile != null) {
      final fileName = DateTime.now().millisecondsSinceEpoch.toString();
      final reference = firebaseStorage.ref().child(fileName);
      final uploadTask = reference.putFile(imageFile!);
      try {
        final snapshot = await uploadTask;
        return await snapshot.ref.getDownloadURL();
      } on FirebaseException catch (e) {
        await Fluttertoast.showToast(msg: e.message ?? e.toString());
      }
    }
  }

  File? imageFile;

  String imageUrl = '';

  Future<void> _onGetProfileImage(
    AuthGetProfileImageEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final imagePicker = ImagePicker();
    XFile? pickedFile;
    pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      emit(AuthState.loadedProfileImage(imageFilePath: imageFile!.path));
      return;
    }
    emit(const AuthState.failed(''));
  }

  void _onSignOut(
    AuthSignOutEvent event,
    Emitter<AuthState> emit,
  ) {
    // TODO Ver de eliminar los datos del usuario guardados
    emit(const AuthState.unauthenticated());
  }
}

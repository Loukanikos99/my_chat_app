import 'dart:io';

import 'package:chat_client_repository/chat_app_client.dart';
import 'package:chat_client_service/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_chat_app/auth/auth_failures/auth_failures.dart';
import 'package:my_chat_app/auth/bloc/auth_event.dart';
import 'package:my_chat_app/auth/bloc/auth_state.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.chatClientRepo,
  }) : super(const AuthState.initial()) {
    on<AuthSignInEvent>(_onSignIn);
    on<AuthSignOutEvent>(_onSignOut);
    on<AuthRegisterEvent>(_onRegister);
    on<AuthGoogleSignInEvent>(_onGoogleSignIn);
    on<AuthGetProfileImageEvent>(_onGetProfileImage);
  }

  final ChatClientRepository chatClientRepo;

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
      final eitherUser = await chatClientRepo.login(
        event.username,
        event.password,
      );

      if (eitherUser.isLeft()) {
        final failure =
            (eitherUser as Left<ChatClientRepositoryFailures, User>).value;
        // emit(
        //   AuthState.failed(failure: AuthFailures.repositoryFailure(failure)),
        // );
        emit(const AuthState.failed());
        return;
      }
      if (eitherUser.isRight()) {
        final user =
            (eitherUser as Right<ChatClientRepositoryFailures, User>).value;
        emit(AuthState.authenticated(user: user));
      }
    } catch (e) {
      emit(const AuthState.failed());
      // emit(AuthState.failed(failure: AuthFailures.failure('$e')));
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
        emit(const AuthState.failed());
        return;
      }

      final auth = await googleSignInAccount.authentication;
      final eitherUser = await chatClientRepo.loginFirebaseGoogle(
        token: auth.accessToken ?? '',
      );
      if (eitherUser.isRight()) {
        final user =
            (eitherUser as Right<ChatClientRepositoryFailures, User>).value;
        emit(AuthState.authenticated(user: user));
        return;
      }
      emit(const AuthState.initial());
    } catch (e) {
      // emit(
      //   AuthState.failed(failure: AuthFailures.failure('$e'))
      // );
      emit(const AuthState.failed());
    }
  }

  Future<void> _onRegister(
    AuthRegisterEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final picture = await _getImageUrl();

    final eitherUser = await chatClientRepo.registerFirebase(
      name: event.name,
      email: event.email,
      password: event.password,
      picture: picture,
    );
    if (eitherUser.isRight()) {
      final user =
          (eitherUser as Right<ChatClientRepositoryFailures, User>).value;
      emit(AuthState.authenticated(user: user));
    }

    if (eitherUser.isLeft()) {
      final failure =
          (eitherUser as Left<ChatClientRepositoryFailures, User>).value;
      // emit(
      //   AuthState.failed(failure: AuthFailures.repositoryFailure(failure)),
      // );
      emit(const AuthState.failed());
    }
  }

  Future<void> _onSignOut(
    AuthSignOutEvent event,
    Emitter<AuthState> emit,
  ) async {
    final eitherSignout = await chatClientRepo.signOut();

    if (eitherSignout.isRight()) {
      emit(const AuthState.unauthenticated());
      return;
    }

    if (eitherSignout.isLeft()) {
      final failure =
          (eitherSignout as Left<ChatClientRepositoryFailures, User>).value;
      // emit(
      //   AuthState.failed(failure: AuthFailures.repositoryFailure(failure)),
      // );
      emit(const AuthState.failed());
      return;
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
    return null;
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
    try {
      pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
        emit(AuthState.loadedProfileImage(imageFilePath: imageFile!.path));
        return;
      }
    } catch (e) {
      // emit(AuthState.failed(failure: AuthFailures.failure('$e')));
      emit(const AuthState.failed());
    }
  }
}

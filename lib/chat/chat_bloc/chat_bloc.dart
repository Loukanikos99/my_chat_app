import 'dart:async';

import 'package:chat_client_repository/chat_app_client.dart';
import 'package:chat_client_service/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_event.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({
    required this.chatClientRepo,
  }) : super(const ChatState.initial()) {
    on<ChatGetUsersEvent>(_onGetUsers);
    on<ChatGetUsersAlreadyWithChatEvent>(_onGetUsersAlreadyWithChat);
  }

  final ChatClientRepository chatClientRepo;

  final currentUserId = auth.FirebaseAuth.instance.currentUser?.uid;

  Future<void> _onGetUsers(
    ChatGetUsersEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(const ChatState.loading());
    final stream = chatClientRepo.getUsers(
      'users',
      event.limit,
      event.textSearch,
    );
    final users =
        stream.map((qShot) => qShot.docs.map(User.fromDocument).toList());
    emit(ChatState.usersLoaded(users: users));
  }

  Future<void> _onGetUsersAlreadyWithChat(
    ChatGetUsersAlreadyWithChatEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(const ChatState.loading());
    try {
      final stream = chatClientRepo.getUsersAlreadyInChat(
        currentUserId!,
        event.limit,
        event.textSearch,
      );
      final users =
          stream.map((qShot) => qShot.docs.map(User.fromDocument).toList());
      emit(ChatState.usersLoaded(users: users));
    } catch (e) {
      emit(const ChatState.failed(''));
    }
  }
}

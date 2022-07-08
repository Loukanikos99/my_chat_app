import 'dart:async';

import 'package:chat_app_client/chat_app_client.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_event.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({
    required this.chatAppClient,
  }) : super(const ChatState.initial()) {
    on<ChatGetUsersEvent>(_onGetUsers);
    on<ChatGetUsersAlreadyInChatEvent>(_onGetUsersAlreadyInChat);
  }

  final ChatAppClient chatAppClient;

  final currentUserId = auth.FirebaseAuth.instance.currentUser?.uid;

  Future<void> _onGetUsers(
    ChatGetUsersEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(const ChatState.loading());
    final users = chatAppClient.getUsers(
      'users',
      event.limit,
      event.textSearch,
    );
    emit(ChatState.usersLoaded(users: users));
  }

  Future<void> _onGetUsersAlreadyInChat(
    ChatGetUsersAlreadyInChatEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(const ChatState.loading());
    try {
      final users = chatAppClient.getUsersAlreadyInChat(
        currentUserId!,
        event.limit,
        event.textSearch,
      );
      emit(ChatState.usersLoaded(users: users));
    } catch (e) {
      emit(const ChatState.failed(''));
    }
  }
}

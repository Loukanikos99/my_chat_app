import 'dart:io';

import 'package:chat_app_client/chat_app_client.dart';
import 'package:chat_app_client/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_chat_app/chat/bloc/chat_event.dart';
import 'package:my_chat_app/chat/bloc/chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({
    required this.chatAppClient,
    this.otherUser,
  }) : super(const ChatState.initial()) {
    on<ChatSendMessageEvent>(_onSendMessage);
    on<ChatGetImageEvent>(_onGetImage);
    on<ChatUploadImageFilesEvent>(_onUploadImageFiles);
    on<ChatGetUsersEvent>(_onGetUsers);
    on<ChatGetUsersAlreadyInChatEvent>(_onGetUsersAlreadyInChat);
  }

  // TODO Chequear estar usando correctamente los estados.

  final ChatAppClient chatAppClient;

  final User? otherUser;

  final firebaseStorage = FirebaseStorage.instance;

  final currentUserId = auth.FirebaseAuth.instance.currentUser?.uid;

  final TextEditingController textEditingController = TextEditingController();

  final ScrollController scrollController = ScrollController();

  File? imageFile;

  String groupChatId = '';

  String imageUrl = '';

  List<User?> chatList = <User?>[];

  Future<void> _onSendMessage(
    ChatSendMessageEvent event,
    Emitter<ChatState> emit,
  ) async {
    if (event.content.trim().isNotEmpty) {
      emit(const ChatState.loading());
      textEditingController.clear();
      try {
        await chatAppClient.sendChatMessage(
          event.content,
          event.type,
          groupChatId,
          currentUserId!,
          otherUser?.id ?? '',
        );
        emit(const ChatState.success());
      } catch (e) {
        emit(ChatState.failed('$e'));
      }
      // scrollController.animateTo(
      //   0,
      //   duration: const Duration(milliseconds: 300),
      //   curve: Curves.easeOut,
      // );
    } else {
      await Fluttertoast.showToast(
        msg: 'Nothing to send',
      );
    }
  }

  Future<void> _onGetImage(
    ChatGetImageEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(const ChatState.loading());
    final imagePicker = ImagePicker();
    XFile? pickedFile;
    try {
      pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
        if (imageFile != null) {
          add(ChatUploadImageFilesEvent(peerId: otherUser?.id ?? ''));
          emit(const ChatState.success());
        }
        emit(const ChatState.failed('error inesperado'));
      }
    } catch (e) {
      emit(ChatState.failed('$e'));
    }
  }

  Future<void> _onUploadImageFiles(
    ChatUploadImageFilesEvent event,
    Emitter<ChatState> emit,
  ) async {
    emit(const ChatState.loading());

    final fileName = DateTime.now().millisecondsSinceEpoch.toString();

    try {
      final uploadTask = uploadImageFile(imageFile!, fileName);
      final snapshot = await uploadTask;
      imageUrl = await snapshot.ref.getDownloadURL();
      add(ChatSendMessageEvent(content: imageUrl, type: MessageType.image));
    } on FirebaseException catch (e) {
      emit(ChatState.failed('$e'));
      await Fluttertoast.showToast(msg: e.message ?? e.toString());
    }
  }

// TODO Si es parte de otra funcion, es necesario crear el evento? Donde se coloca?
  UploadTask uploadImageFile(File image, String filename) {
    final reference = firebaseStorage.ref().child(filename);
    final uploadTask = reference.putFile(image);
    return uploadTask;
  }

  Stream<QuerySnapshot> _onGetUsers(
    ChatGetUsersEvent event,
    Emitter<ChatState> emit,
  ) =>
      chatAppClient.getUsers(
        event.collectionPath,
        event.limit,
        event.textSearch,
      );
  Stream<QuerySnapshot> _onGetUsersAlreadyInChat(
    ChatGetUsersAlreadyInChatEvent event,
    Emitter<ChatState> emit,
  ) =>
      chatAppClient.getUsersAlreadyInChat(
        currentUserId!,
        event.limit,
        event.textSearch,
      );

  Future<void> updateFirestoreData(
    ChatUpdateFirebaseDataEvent event,
    Emitter<ChatState> emit,
  ) =>
      chatAppClient.updateFirestoreData(
        event.collectionPath,
        event.docPath,
        event.dataUpdate,
      );

  Stream<QuerySnapshot> getChatMessage(
    ChatGetChatMessagesEvent event,
    Emitter<ChatState> emit,
  ) =>
      chatAppClient.getChatMessage(
        event.groupChatIdFromChatScreen ?? groupChatId,
        event.limit,
      );

  Future<void> _onUpdateUnreadMessage(
    ChatUpdateUnreadMessageEvent event,
    Emitter<ChatState> emit,
  ) =>
      chatAppClient.updateUnreadMessage(
        groupChatId,
        docPath,
        chatMessage,
      );

  // void updateUnreadMessage(
  //   String docPath,
  //   QueryDocumentSnapshot<Object?> chatMessage,
  // ) =>
  //     _chatAppClient.updateUnreadMessage(groupChatId, docPath, chatMessage);
}

class MessageType {
  static const text = 0;
  static const image = 1;
  static const sticker = 2;
}

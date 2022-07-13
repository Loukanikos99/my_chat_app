import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chat_client_repository/chat_app_client.dart';
import 'package:chat_client_repository/models/chat_messaging_model.dart';
import 'package:chat_client_service/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_chat_app/chat/room_bloc/room_event.dart';
import 'package:my_chat_app/chat/room_bloc/room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  RoomBloc({
    required this.otherUser,
    required this.chatClientRepo,
  }) : super(const RoomState.initial()) {
    on<RoomSendMessageEvent>(_onSendMessage);
    on<RoomGetChatMessagesEvent>(_onGetChatMessage);
    on<RoomUpdateFirebaseDataEvent>(_onUpdateFirestoreData);
    on<RoomUpdateUnreadMessageEvent>(_onUpdateUnreadMessage);
    on<RoomGetImageEvent>(_onGetImage);
  }

  final ChatClientRepository chatClientRepo;

  final User? otherUser;

  String groupChatId = '';

  File? imageFile;

  final firebaseStorage = FirebaseStorage.instance;

  final currentUserId = auth.FirebaseAuth.instance.currentUser?.uid;

  Future<void> _readLocal() async {
    if (currentUserId!.compareTo(otherUser?.id ?? '') > 0) {
      groupChatId = '$currentUserId - ${otherUser?.id ?? ''}';
    } else {
      groupChatId = '${otherUser?.id ?? ''} - $currentUserId';
    }
    await chatClientRepo.updateFirestoreData(
      currentUserId!,
      <String, dynamic>{'chattingWith': otherUser?.id ?? ''},
    );
  }

  Future<void> _onSendMessage(
    RoomSendMessageEvent event,
    Emitter<RoomState> emit,
  ) async {
    if (event.content.trim().isNotEmpty) {
      emit(const RoomState.loading());
      try {
        await _readLocal();
        await chatClientRepo.sendChatMessage(
          event.content,
          event.type,
          groupChatId,
          currentUserId!,
          otherUser?.id ?? '',
        );
        add(const RoomEvent.getChatMessage(limit: 20));
      } catch (e) {
        emit(const RoomState.failed());
      }
    } else {
      await Fluttertoast.showToast(
        msg: 'Nothing to send',
      );
    }
  }

  Future<void> _onGetChatMessage(
    RoomGetChatMessagesEvent event,
    Emitter<RoomState> emit,
  ) async {
    emit(const RoomState.loading());
    try {
      await _readLocal();
      final stream = chatClientRepo.getChatMessage(
        groupChatId,
        event.limit,
      );
      final messages = stream
          .map((qShot) => qShot.docs.map(ChatMessage.fromDocument).toList());
      emit(RoomState.messagesloaded(messages: messages));
    } catch (e) {
      emit(const RoomState.failed());
    }
  }

  Future<void> _onUpdateFirestoreData(
    RoomUpdateFirebaseDataEvent event,
    Emitter<RoomState> emit,
  ) =>
      chatClientRepo.updateFirestoreData(
        event.docPath,
        event.dataUpdate,
      );

  Future<void> _onUpdateUnreadMessage(
    RoomUpdateUnreadMessageEvent event,
    Emitter<RoomState> emit,
  ) =>
      chatClientRepo.updateUnreadMessage(
        groupChatId,
        event.docPath,
        event.chatMessage,
      );

  Future<void> _onGetImage(
    RoomGetImageEvent event,
    Emitter<RoomState> emit,
  ) async {
    emit(const RoomState.loading());
    final imagePicker = ImagePicker();
    XFile? pickedFile;
    try {
      pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        imageFile = File(pickedFile.path);
        if (imageFile != null) {
          await _onUploadImageFiles();
          emit(const RoomState.loaded());
        }
        emit(const RoomState.failed());
      }
    } catch (e) {
      emit(const RoomState.failed());
    }
  }

  Future<void> _onUploadImageFiles() async {
    final fileName = DateTime.now().millisecondsSinceEpoch.toString();

    final uploadTask = _uploadImageFile(imageFile!, fileName);
    try {
      final imageUrl = await uploadTask.snapshot.ref.getDownloadURL();
      add(RoomSendMessageEvent(content: imageUrl, type: MessageType.image));
    } on FirebaseException catch (e) {
      await Fluttertoast.showToast(msg: e.message ?? e.toString());
    }
  }

  UploadTask _uploadImageFile(File image, String filename) {
    final reference = firebaseStorage.ref().child(filename);
    final uploadTask = reference.putFile(image);
    return uploadTask;
  }
}

class MessageType {
  static const text = 0;
  static const image = 1;
  static const sticker = 2;
}

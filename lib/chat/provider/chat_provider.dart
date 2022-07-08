import 'dart:io';

import 'package:chat_app_client/chat_app_client.dart';
import 'package:chat_app_client/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

class ChatProvider extends ChangeNotifier {
  ChatProvider([this.otherUser]);

  final User? otherUser;

  final firebaseStorage = FirebaseStorage.instance;

  final currentUserId = auth.FirebaseAuth.instance.currentUser?.uid;

  final TextEditingController textEditingController = TextEditingController();

  final ScrollController scrollController = ScrollController();

  final ChatAppClient _chatAppClient = ChatAppClient();

  File? imageFile;

  String groupChatId = '';

  String imageUrl = '';

  Future getImage() async {
    final imagePicker = ImagePicker();
    XFile? pickedFile;
    pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      if (imageFile != null) {
        notifyListeners();
        await uploadImageFiles(otherUser?.id ?? '');
      }
    }
    notifyListeners();
  }

  Future<void> uploadImageFiles(String peerId) async {
    final fileName = DateTime.now().millisecondsSinceEpoch.toString();
    final uploadTask = uploadImageFile(imageFile!, fileName);
    try {
      final snapshot = await uploadTask;
      imageUrl = await snapshot.ref.getDownloadURL();
      notifyListeners();
      onSendMessage(imageUrl, MessageType.image);
    } on FirebaseException catch (e) {
      notifyListeners();
      await Fluttertoast.showToast(msg: e.message ?? e.toString());
    }
  }

  void onSendMessage(String content, int type) {
    if (content.trim().isNotEmpty) {
      textEditingController.clear();
      _chatAppClient.sendChatMessage(
        content,
        type,
        groupChatId,
        currentUserId!,
        otherUser?.id ?? '',
      );
      scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      Fluttertoast.showToast(
        msg: 'Nothing to send',
        backgroundColor: Colors.grey,
      );
    }
  }

  void readLocal() {
    if (currentUserId!.compareTo(otherUser?.id ?? '') > 0) {
      groupChatId = '$currentUserId - ${otherUser?.id ?? ''}';
    } else {
      groupChatId = '${otherUser?.id ?? ''} - $currentUserId';
    }
    _chatAppClient.updateFirestoreData(
      'users',
      currentUserId!,
      <String, dynamic>{'chattingWith': otherUser?.id ?? ''},
    );
  }

  List<User?> chatList = <User?>[];

  UploadTask uploadImageFile(File image, String filename) {
    final reference = firebaseStorage.ref().child(filename);
    final uploadTask = reference.putFile(image);
    return uploadTask;
  }

  Stream<QuerySnapshot> getUsers(
    String collectionPath,
    int limit,
    String? textSearch,
  ) =>
      getUsers(collectionPath, limit, textSearch);

  Future<void> updateFirestoreData(
    String collectionPath,
    String docPath,
    Map<String, dynamic> dataUpdate,
  ) =>
      _chatAppClient.updateFirestoreData(collectionPath, docPath, dataUpdate);

  Stream<QuerySnapshot> getChatMessage(
    int limit, [
    String? groupChatIdFromChatScreen,
  ]) =>
      _chatAppClient.getChatMessage(
        groupChatIdFromChatScreen ?? groupChatId,
        limit,
      );

  void sendChatMessage(
    String content,
    int type,
    String groupChatId,
    String currentUserId,
    String peerId,
  ) =>
      _chatAppClient.sendChatMessage(
        content,
        type,
        groupChatId,
        currentUserId,
        peerId,
      );

  Stream<QuerySnapshot> getUsersAlreadyInChat(int limit, String? textSearch) =>
      _chatAppClient.getUsersAlreadyInChat(currentUserId!, limit, textSearch);

  void updateUnreadMessage(
    String docPath,
    QueryDocumentSnapshot<Object?> chatMessage,
  ) =>
      _chatAppClient.updateUnreadMessage(groupChatId, docPath, chatMessage);
}

class MessageType {
  static const text = 0;
  static const image = 1;
  static const sticker = 2;
}

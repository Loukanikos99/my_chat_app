import 'dart:developer';

import 'package:chat_app_client/constants/firestore_constants.dart';
import 'package:chat_app_client/models/chat_messaging_model.dart';
import 'package:chat_app_client/models/user_model.dart';
import 'package:chat_app_client/src/chat_app_client_base.dart';
import 'package:chat_app_client/src/exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:fluttertoast/fluttertoast.dart';

/// {@template chat_app_client}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class ChatAppClient with ChatAppClientBase {
  /// {@macro chat_app_client}
  ChatAppClient() : _firebaseAuth = auth.FirebaseAuth.instance;

  final auth.FirebaseAuth _firebaseAuth;

  @override
  Future<User?> login(String email, String password) async {
    try {
      final userData = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .timeout(const Duration(seconds: 15));
      return await getUserInfo(userData.user!.uid);
    } on auth.FirebaseAuthException catch (error, stackTrace) {
      log(
        error.message.toString(),
        time: DateTime.now(),
        error: error,
        stackTrace: stackTrace,
      );

      await Fluttertoast.showToast(msg: 'Credenciales inválidas.');

      if (error.code == 'user-not-found' ||
          error.code == 'wrong-password' ||
          error.code == 'invalid-email') {
        throw WrongAuthCredentials();
      }

      rethrow;
    } catch (error, stackTrace) {
      await Fluttertoast.showToast(msg: 'Ha ocurrido un error inesperado.');
      log(
        error.toString(),
        time: DateTime.now(),
        error: error,
        stackTrace: stackTrace,
      );

      rethrow;
    }
  }

  @override
  Future<User?> loginFirebaseGoogle({
    required String token,
  }) async {
    try {
      User? user;
      final auth.AuthCredential credential =
          auth.GoogleAuthProvider.credential(accessToken: token);
      final userCred = await auth.FirebaseAuth.instance.signInWithCredential(
        credential,
      );

      user = await getUserInfo(userCred.user?.uid ?? '');
      if (user != null) {
        return user;
      } else {
        user = User(
          id: userCred.user?.uid,
          email: userCred.user?.email,
          name: userCred.user?.displayName,
          picture: userCred.user?.photoURL,
        );
        await updateOrRegister(user: user);
      }
    } catch (e) {
      await Fluttertoast.showToast(
        msg: 'No se a podido loggear correctamente.',
      );
    }
    return null;
  }

  /// Registrar un usuario en la base de datos de firestore
  /// Tener en cuenta que este metodo tambien registra al
  /// usuario en el Authentication de Firebase
  Future<User?> registerFirebase({
    required String name,
    required String email,
    required String password,
    String? picture,
  }) async {
    try {
      /// Esto es lo que realmente verifica si el usuario está o no registrado
      /// Si está registrado sale error
      final userData = await auth.FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      /// Creamos un objeto User para instanciarlo
      /// con los pocos datos que tenemos
      /// Luego hacemos la insercion en Firestore
      final user = User();
      user
        ..id = userData.user!.uid
        ..email = email
        ..name = name
        ..picture = picture;

      await updateOrRegister(user: user);
      return user;
    } catch (e) {
      rethrow;
    }
  }

  /// Actualizar o registrar un usuario en Firestore
  Future<bool> updateOrRegister({required User user}) async {
    try {
      await firebaseFirestore.doc('users/${user.id!}').set(user.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut().timeout(const Duration(seconds: 15));
    } catch (error, stackTrace) {
      log(
        error.toString(),
        time: DateTime.now(),
        error: error,
        stackTrace: stackTrace,
      );

      rethrow;
    }
  }

  @override
  Future<User?> getUserInfo(String id) async {
    try {
      final data = await firebaseFirestore.doc('users/$id').get();

      if (data.exists) {
        return User.fromJson(data.data()!);
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }

  @override
  Stream<QuerySnapshot> getUsers(
    String collectionPath,
    int limit,
    String? textSearch,
  ) {
    if (textSearch?.isNotEmpty == true) {
      final firstLetterCapital =
          textSearch!.substring(0, 1).toUpperCase() + textSearch.substring(1);
      return firebaseFirestore
          .collection(collectionPath)
          .orderBy(FirestoreConstants.displayName)
          .startAt([firstLetterCapital]).endAt(
        ['$firstLetterCapital\uf8ff'],
      ).snapshots();
    } else {
      return firebaseFirestore
          .collection(collectionPath)
          .limit(limit)
          .snapshots();
    }
  }

  @override
  Future<void> updateFirestoreData(
    String collectionPath,
    String docPath,
    Map<String, dynamic> dataUpdate,
  ) {
    return firebaseFirestore
        .collection(collectionPath)
        .doc(docPath)
        .update(dataUpdate);
  }

  @override
  Future<void> updateUnreadMessage(
    String groupChatId,
    String docPath,
    ChatMessage chatMessage,
  ) async {
    final DocumentReference documentReference = firebaseFirestore
        .collection(FirestoreConstants.pathMessageCollection)
        .doc(groupChatId)
        .collection(groupChatId)
        .doc(docPath);

    chatMessage.isRead = true;
    await FirebaseFirestore.instance.runTransaction(
      (transaction) async {
        transaction.set(documentReference, chatMessage.toJson());
      },
    );
  }

  @override
  Stream<QuerySnapshot> getChatMessage(String groupChatId, int limit) {
    return firebaseFirestore
        .collection(FirestoreConstants.pathMessageCollection)
        .doc(groupChatId)
        .collection(groupChatId)
        .orderBy(FirestoreConstants.timestamp, descending: true)
        .limit(limit)
        .snapshots();
  }

  @override
  Future<void> sendChatMessage(
    String content,
    int type,
    String groupChatId,
    String currentUserId,
    String peerId,
  ) async {
    final DocumentReference documentReference = firebaseFirestore
        .collection(FirestoreConstants.pathMessageCollection)
        .doc(groupChatId)
        .collection(groupChatId)
        .doc(DateTime.now().millisecondsSinceEpoch.toString());
    final chatMessages = ChatMessage(
      idFrom: currentUserId,
      idTo: peerId,
      timestamp: DateTime.now().millisecondsSinceEpoch.toString(),
      content: content,
      type: type,
      isRead: false,
    );

    await FirebaseFirestore.instance.runTransaction(
      (transaction) async {
        transaction.set(documentReference, chatMessages.toJson());
      },
    );

    await firebaseFirestore.collection('messages').doc(groupChatId).set(
      <String, String>{'id': groupChatId},
    );
  }

  @override
  Stream<QuerySnapshot> getUsersAlreadyInChat(
    String currentUserId,
    int limit,
    String? textSearch,
  ) async* {
    var chatIds = <String>[];
    final response = await FirebaseFirestore.instance
        .collection(FirestoreConstants.pathMessageCollection)
        .get();

    for (final doc in response.docs) {
      chatIds.add(doc.id);
    }

    chatIds =
        chatIds.where((chatId) => chatId.contains(currentUserId)).toList();
    var chatIdsFromCurrentUser = <String>[];
    for (final chatId in chatIds) {
      chatIdsFromCurrentUser.addAll(chatId.split(' - '));
    }
    chatIdsFromCurrentUser = chatIdsFromCurrentUser
        .where((chatId) => !chatId.contains(currentUserId))
        .toList();
    if (textSearch?.isNotEmpty == true) {
      final firstLetterCapital =
          textSearch!.substring(0, 1).toUpperCase() + textSearch.substring(1);
      yield* firebaseFirestore
          .collection(FirestoreConstants.pathUserCollection)
          .limit(limit)
          .startAt([firstLetterCapital]).endAt(
        ['$firstLetterCapital\uf8ff'],
      ).snapshots();
      return;
    }
    if (chatIdsFromCurrentUser.isNotEmpty) {
      yield* firebaseFirestore
          .collection(FirestoreConstants.pathUserCollection)
          .where('id', whereIn: chatIdsFromCurrentUser)
          .snapshots();
      return;
    }
  }
}

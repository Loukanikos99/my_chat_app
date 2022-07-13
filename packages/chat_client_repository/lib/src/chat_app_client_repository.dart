import 'package:chat_client_repository/models/chat_messaging_model.dart';
import 'package:chat_client_repository/src/chat_client_repository_base.dart';
import 'package:chat_client_repository/src/failures/chat_client_repository_failures.dart';
import 'package:chat_client_service/chat_client_service.dart';
import 'package:chat_client_service/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

/// {@template chat_app_client}
/// {@endtemplate}
class ChatClientRepository with ChatClientRepositoryBase {
  /// {@macro chat_app_client}
  ChatClientRepository({required this.chatClientService})
      : _firebaseAuth = auth.FirebaseAuth.instance;

  final auth.FirebaseAuth _firebaseAuth;

  /// ChatClientService contains all the methods to comunicate with Firebase.
  final ChatClientService chatClientService;

  @override
  Future<Either<ChatClientRepositoryFailures, User>> login(
    String email,
    String password,
  ) async {
    try {
      final userData = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .timeout(const Duration(seconds: 15));

      final eitherUser =
          await chatClientService.getUserInfo(userData.user!.uid);

      if (eitherUser.isLeft()) {
        final failure =
            (eitherUser as Left<ChatClientServiceFailures, User>).value;
        return Left(ChatClientRepositoryFailures.serviceFailure(failure));
      }

      final user = (eitherUser as Right<ChatClientServiceFailures, User>).value;

      return Right(user);
    } on auth.FirebaseAuthException catch (error) {
      if (error.code == 'user-not-found' ||
          error.code == 'wrong-password' ||
          error.code == 'invalid-email') {
        return const Left(ChatClientRepositoryFailures.badCredentials());
      }

      rethrow;
    } catch (_) {
      return const Left(ChatClientRepositoryFailures.unknown());
    }
  }

  @override
  Future<Either<ChatClientRepositoryFailures, User>> loginFirebaseGoogle({
    required String token,
  }) async {
    auth.UserCredential userCred;

    try {
      final auth.AuthCredential credential =
          auth.GoogleAuthProvider.credential(accessToken: token);

      userCred = await auth.FirebaseAuth.instance.signInWithCredential(
        credential,
      );
    } catch (e) {
      return const Left(ChatClientRepositoryFailures.googleCredentials());
    }

    final eitherUser =
        await chatClientService.getUserInfo(userCred.user?.uid ?? '');

    if (eitherUser.isRight()) {
      final user = (eitherUser as Right<ChatClientServiceFailures, User>).value;
      return Right(user);
    }

    final user = User(
      id: userCred.user?.uid,
      email: userCred.user?.email,
      name: userCred.user?.displayName,
      picture: userCred.user?.photoURL,
    );

    try {
      final eitherRegister =
          await chatClientService.updateOrRegister(user: user);
      if (eitherRegister.isRight()) {
        return Right(user);
      }

      final failure =
          (eitherUser as Left<ChatClientServiceFailures, User>).value;

      return Left(ChatClientRepositoryFailures.serviceFailure(failure));
    } catch (_) {
      return const Left(ChatClientRepositoryFailures.unknown());
    }
  }

  @override
  Future<Either<ChatClientRepositoryFailures, User>> registerFirebase({
    required String name,
    required String email,
    required String password,
    String? picture,
  }) async {
    auth.UserCredential? userData;
    try {
      try {
        /// Tries to create a new user.
        userData = await auth.FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
      } catch (_) {
        return const Left(ChatClientRepositoryFailures.register());
      }

      /// Create a User object to instantiate it
      /// with the little data we have
      /// Then we do the insert in Firestore
      final user = User(
        id: userData.user?.uid,
        email: email,
        name: name,
        picture: picture,
      );
      final eitherRegister =
          await chatClientService.updateOrRegister(user: user);

      if (eitherRegister.isRight()) {
        return Right(user);
      }

      final failure =
          (eitherRegister as Left<ChatClientServiceFailures, User>).value;

      return Left(ChatClientRepositoryFailures.serviceFailure(failure));
    } catch (_) {
      return const Left(ChatClientRepositoryFailures.unknown());
    }
  }

  @override
  Future<Either<ChatClientRepositoryFailures, bool>> signOut() async {
    try {
      await _firebaseAuth.signOut().timeout(const Duration(seconds: 15));
      return const Right(true);
    } catch (error) {
      return const Left(ChatClientRepositoryFailures.couldntsignout());
    }
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
    String docPath,
    Map<String, dynamic> dataUpdate,
  ) {
    return firebaseFirestore
        .collection(FirestoreConstants.pathUserCollection)
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

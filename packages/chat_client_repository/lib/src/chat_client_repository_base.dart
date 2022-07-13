import 'package:chat_client_repository/models/chat_messaging_model.dart';
import 'package:chat_client_repository/src/failures/chat_client_repository_failures.dart';
import 'package:chat_client_service/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

/// ChatClientRepositorytBase is the mixin of all the request
/// for the chat_app.
mixin ChatClientRepositoryBase {
  /// Returns an instance using the default FirebaseApp.
  final firebaseFirestore = FirebaseFirestore.instance;

  /// Trais to login with the given credentials.
  Future<Either<ChatClientRepositoryFailures, User>> login(
    String email,
    String password,
  );

  ///Trais to login with a token using GoogleSignIn.
  Future<Either<ChatClientRepositoryFailures, User>> loginFirebaseGoogle({
    required String token,
  });

  /// Tries to register a user in the firestore database
  /// Note that this method also registers the
  /// user in Firebase Authentication
  Future<Either<ChatClientRepositoryFailures, User>> registerFirebase({
    required String name,
    required String email,
    required String password,
    String? picture,
  });

  /// Trais to logout the current user.
  Future<Either<ChatClientRepositoryFailures, void>> signOut();

  /// Trais to get a list of users from FireStore.
  Stream<QuerySnapshot> getUsers(
    String collectionPath,
    int limit,
    String? textSearch,
  );

  /// Tries to bring a list of users with whom a
  /// chat has already been started.
  Stream<QuerySnapshot> getUsersAlreadyInChat(
    String currentUserId,
    int limit,
    String? textSearch,
  );

  /// Trais to update the data from a chat already started
  Future<void> updateFirestoreData(
    String docPath,
    Map<String, dynamic> dataUpdate,
  );

  /// Tries to grab the last message that was sent from the current User
  /// and toggles the isRead variable from ChatMessage model to true to report
  /// that the message has already been read by the other User.
  void updateUnreadMessage(
    String groupChatId,
    String docPath,
    ChatMessage chatMessage,
  );

  /// Trais to get the messages from an specific chat.
  Stream<QuerySnapshot> getChatMessage(
    String groupChatId,
    int limit,
  );

  /// Trais to send a message from the current
  /// User to a particular chat.
  void sendChatMessage(
    String content,
    int type,
    String groupChatId,
    String currentUserId,
    String peerId,
  );
}

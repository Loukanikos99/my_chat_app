import 'package:chat_app_client/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

/// ChatRepositoryBase is the mixin of all de request
/// for the chat_app.
mixin ChatAppClientBase {
  /// Returns an instance using the default FirebaseApp.
  final firebaseFirestore = FirebaseFirestore.instance;

  /// Trais to login with the given credentials.
  Future<User?> login(String email, String password);

  ///Trais to login with a token using GoogleSignIn.
  Future<auth.UserCredential?> loginFirebaseGoogle({required String token});

  /// Trais to logout the current user.
  Future<void> signOut();

  /// Trais to take the User data from FireStore.
  Future<User?> getUserInfo(String id);

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
    String collectionPath,
    String docPath,
    Map<String, dynamic> dataUpdate,
  );

  /// Tries to grab the last message that was sent from the current User
  /// and toggles the isRead variable from ChatMessage model to true to report
  /// that the message has already been read by the other User.
  void updateUnreadMessage(
    String groupChatId,
    String docPath,
    QueryDocumentSnapshot<Object?> chatMessage,
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

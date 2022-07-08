import 'package:chat_app_client/constants/firestore_constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// ChatMessages is the model of the messages from chat.
class ChatMessage {
  /// CONSTRUCTOR
  ChatMessage({
    required this.idFrom,
    required this.idTo,
    required this.timestamp,
    required this.content,
    required this.type,
    required this.isRead,
  });

  /// Tries to convert the data from the DB to a [ChatMessage].
  factory ChatMessage.fromDocument(DocumentSnapshot documentSnapshot) {
    final idFrom = documentSnapshot.get(FirestoreConstants.idFrom) as String;
    final idTo = documentSnapshot.get(FirestoreConstants.idTo) as String;
    final timestamp =
        documentSnapshot.get(FirestoreConstants.timestamp) as String;
    final content = documentSnapshot.get(FirestoreConstants.content) as String;
    final type = documentSnapshot.get(FirestoreConstants.type) as int;
    final isRead = documentSnapshot.get(FirestoreConstants.isRead) as bool;

    return ChatMessage(
      idFrom: idFrom,
      idTo: idTo,
      timestamp: timestamp,
      content: content,
      type: type,
      isRead: isRead,
    );
  }
  String? idFrom;
  String? idTo;
  String? timestamp;
  String? content;
  int? type;
  bool? isRead;

  /// Converts the [ChatMessage] to a [Map]
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      FirestoreConstants.idFrom: idFrom,
      FirestoreConstants.idTo: idTo,
      FirestoreConstants.timestamp: timestamp,
      FirestoreConstants.content: content,
      FirestoreConstants.type: type,
      FirestoreConstants.isRead: isRead,
    };
  }
}

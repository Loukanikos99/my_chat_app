import 'package:chat_client_service/models/user_model.dart';
import 'package:chat_client_service/src/failures/chat_client_service_failures.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

/// ChatClientServiceBase is the mixin of all the request
/// for the chat_app.
mixin ChatClientServiceBase {
  /// Returns an instance using the default FirebaseApp.
  final firebaseFirestore = FirebaseFirestore.instance;

  /// Trais to get the user by ID.
  Future<Either<ChatClientServiceFailures, User>> getUserInfo(
    String id,
  );

  /// Trais to update or register a user.
  Future<Either<ChatClientServiceFailures, bool>> updateOrRegister({
    required User user,
  });
}

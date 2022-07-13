import 'package:chat_client_service/models/user_model.dart';
import 'package:chat_client_service/src/chat_client_service_base.dart';
import 'package:chat_client_service/src/failures/chat_client_service_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

/// {@template chat_client_service}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class ChatClientService with ChatClientServiceBase {
  /// {@macro chat_client_service}
  ChatClientService() : _firebaseAuth = auth.FirebaseAuth.instance;

  final auth.FirebaseAuth _firebaseAuth;

  @override
  Future<Either<ChatClientServiceFailures, User>> getUserInfo(
    String id,
  ) async {
    try {
      final data = await firebaseFirestore.doc('users/$id').get();

      if (data.exists) {
        try {
          final user = User.fromJson(data.data()!);
          return Right(user);
        } catch (e) {
          return const Left(ChatClientServiceFailures.serialization());
        }
      }
      return const Left(ChatClientServiceFailures.noData());
    } catch (e) {
      return const Left(ChatClientServiceFailures.failure());
    }
  }

  @override
  Future<Either<ChatClientServiceFailures, bool>> updateOrRegister({
    required User user,
  }) async {
    try {
      await firebaseFirestore.doc('users/${user.id!}').set(user.toJson());
      return const Right(true);
    } catch (e) {
      return const Left(ChatClientServiceFailures.errorCreatingUser());
    }
  }
}

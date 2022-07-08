import 'package:chat_app_client/models/user_model.dart';
import 'package:flutter/material.dart';

class ListTileUserNameWidget extends StatelessWidget {
  const ListTileUserNameWidget({
    super.key,
    required this.userChat,
  });

  final User userChat;

  @override
  Widget build(BuildContext context) {
    return Text(
      userChat.name != null && userChat.name != ''
          ? userChat.name!
          : 'Usuario sin nombre',
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    );
  }
}

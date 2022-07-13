import 'package:chat_client_service/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:my_chat_app/l10n/l10n.dart';

class ListTileUserNameWidget extends StatelessWidget {
  const ListTileUserNameWidget({
    super.key,
    required this.userChat,
  });

  final User userChat;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Text(
      userChat.name != null && userChat.name != ''
          ? userChat.name!
          : l10n.namelessUser,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    );
  }
}

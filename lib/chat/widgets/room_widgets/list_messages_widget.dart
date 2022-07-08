import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_chat_app/chat/room_bloc/room_bloc.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/room_widgets.dart';

class MessagesListWidget extends StatelessWidget {
  MessagesListWidget(this.index, this.chatMessage);

  final int index;
  final ChatMessage chatMessage;

  final currentUserId = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    if (chatMessage.idFrom == currentUserId) {
      // Lado derecho ( Mis mensajes)
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (chatMessage.type == MessageType.text)
            TextBubbleWidget.current(chatMessages: chatMessage)
          else
            chatMessage.type == MessageType.image
                ? ImageBubbleWidget.current(
                    chatMessages: chatMessage,
                    onTap: () {},
                  )
                : const SizedBox.shrink(),
        ],
      );
    } else {
      // Lado izquierdo ( Mensajes recibidos )
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (chatMessage.type == MessageType.text)
            TextBubbleWidget.other(chatMessages: chatMessage)
          else
            chatMessage.type == MessageType.image
                ? ImageBubbleWidget.other(
                    chatMessages: chatMessage,
                    onTap: () {},
                  )
                : const SizedBox.shrink(),
        ],
      );
    }
  }
}

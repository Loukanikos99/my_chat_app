import 'package:chat_client_repository/models/chat_messaging_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageTimeStampWidget extends StatelessWidget {
  const MessageTimeStampWidget({
    super.key,
    required this.chatMessages,
    required this.isCurrentMessage,
  });

  final bool isCurrentMessage;
  final ChatMessage chatMessages;

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('hh:mm a').format(
        DateTime.fromMillisecondsSinceEpoch(
          int.parse(chatMessages.timestamp ?? '0'),
        ),
      ),
      style: TextStyle(
        color: isCurrentMessage ? Colors.white : Colors.black,
        fontSize: 12,
        fontFamily: 'Inter',
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_chat_app/chat/widgets/message_time_stamp_widget.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/room_widgets.dart';

class TextBubbleWidget extends StatelessWidget {
  const TextBubbleWidget.current({
    super.key,
    required this.chatMessages,
  }) : isCurrentMessage = true;

  const TextBubbleWidget.other({
    super.key,
    required this.chatMessages,
  }) : isCurrentMessage = false;

  final bool isCurrentMessage;

  final ChatMessage chatMessages;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment:
          isCurrentMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: screenSize.width * 0.8),
          padding: const EdgeInsets.all(10),
          margin: isCurrentMessage
              ? const EdgeInsets.only(right: 10, bottom: 5)
              : const EdgeInsets.only(left: 10, bottom: 5),
          decoration: BoxDecoration(
            color: isCurrentMessage ? Colors.blue[900] : Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20),
              topRight: const Radius.circular(20),
              bottomLeft:
                  isCurrentMessage ? const Radius.circular(20) : Radius.zero,
              bottomRight:
                  isCurrentMessage ? Radius.zero : const Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: isCurrentMessage
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              Text(
                chatMessages.content ?? '',
                style: TextStyle(
                  fontSize: 16,
                  color: isCurrentMessage ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              MessageTimeStampWidget(
                isCurrentMessage: isCurrentMessage,
                chatMessages: chatMessages,
              ),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ],
    );
  }
}

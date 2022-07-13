import 'package:chat_client_repository/models/chat_messaging_model.dart';
import 'package:flutter/material.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/message_time_stamp_widget.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/room_widgets.dart';

class ImageBubbleWidget extends StatelessWidget {
  const ImageBubbleWidget.current({
    super.key,
    required this.chatMessages,
    required this.onTap,
  }) : isCurrentMessage = true;
  const ImageBubbleWidget.other({
    super.key,
    required this.chatMessages,
    required this.onTap,
  }) : isCurrentMessage = false;

  final ChatMessage chatMessages;
  final void Function()? onTap;
  final bool isCurrentMessage;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: isCurrentMessage
          ? EdgeInsets.only(right: 10, bottom: 5, left: screenSize.width * 0.35)
          : EdgeInsets.only(
              left: 10,
              bottom: 5,
              right: screenSize.width * 0.35,
            ),
      padding: const EdgeInsets.all(10),
      width: 210,
      height: 240,
      decoration: BoxDecoration(
        color: isCurrentMessage ? Colors.red : Colors.white,
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
          GestureDetector(
            onTap: onTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                chatMessages.content as String,
                width: 200,
                height: 190,
                fit: BoxFit.cover,
                loadingBuilder: (
                  BuildContext ctx,
                  Widget child,
                  ImageChunkEvent? loadingProgress,
                ) {
                  if (loadingProgress == null) return child;
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 200,
                    height: 200,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Colors.teal,
                        value: loadingProgress.expectedTotalBytes != null &&
                                loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    ),
                  );
                },
                errorBuilder: (context, object, stackTrace) => errorContainer(),
              ),
            ),
          ),
          const SizedBox(height: 5),
          MessageTimeStampWidget(
            isCurrentMessage: isCurrentMessage,
            chatMessages: chatMessages,
          )
        ],
      ),
    );
  }
}

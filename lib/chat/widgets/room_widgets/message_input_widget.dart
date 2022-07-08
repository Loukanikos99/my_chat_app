import 'package:flutter/material.dart';
import 'package:my_chat_app/chat/provider/chat_provider.dart';
import 'package:provider/provider.dart';

class MessageInputWidget extends StatelessWidget {
  const MessageInputWidget({
    super.key,
    required this.controller,
    this.focusNode,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Consumer<ChatProvider>(
      builder: (context, chatProvider, _) => Container(
        width: double.infinity,
        color: Colors.white,
        height: screenSize.height * 0.09,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 4),
                  child: IconButton(
                    onPressed: () => chatProvider.getImage(),
                    icon: const Icon(
                      Icons.add,
                      size: 28,
                    ),
                    color: Colors.grey,
                  ),
                ),
                Container(
                  width: screenSize.width * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(5),
                  child: TextField(
                    focusNode: focusNode,
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 20,
                    textInputAction: TextInputAction.send,
                    textCapitalization: TextCapitalization.sentences,
                    controller: controller,
                    decoration: const InputDecoration(
                      hintText: 'Escribir algo ..',
                    ),
                    onSubmitted: (_) => chatProvider.onSendMessage(
                      chatProvider.textEditingController.text,
                      MessageType.text,
                    ),
                  ),
                ),
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 60, 201, 154),
                    borderRadius: BorderRadius.circular(150),
                  ),
                  child: IconButton(
                    onPressed: () => chatProvider.onSendMessage(
                      chatProvider.textEditingController.text,
                      MessageType.text,
                    ),
                    icon: const Icon(Icons.send),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

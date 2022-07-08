import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_chat_app/chat/room_bloc/room_bloc.dart';
import 'package:my_chat_app/chat/room_bloc/room_event.dart';
import 'package:my_chat_app/chat/room_bloc/room_state.dart';

class MessageInputWidget extends StatelessWidget {
  MessageInputWidget({
    super.key,
    this.focusNode,
  });

  final FocusNode? focusNode;

  final TextEditingController controller = TextEditingController();

  void _onSubmit(BuildContext context) {
    context.read<RoomBloc>().add(
          RoomEvent.sendMessage(
            type: MessageType.text,
            content: controller.text,
          ),
        );
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocBuilder<RoomBloc, RoomState>(
      builder: (context, state) {
        return Container(
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
                      onPressed: () => context.read<RoomBloc>().add(
                            const RoomEvent.getImage(),
                          ),
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
                      onSubmitted: (_) => _onSubmit(context),
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
                      onPressed: () => _onSubmit(context),
                      icon: const Icon(Icons.send),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

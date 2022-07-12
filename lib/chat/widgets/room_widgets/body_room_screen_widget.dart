import 'package:chat_app_client/models/chat_messaging_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:my_chat_app/chat/room_bloc/room_bloc.dart';
import 'package:my_chat_app/chat/room_bloc/room_event.dart';
import 'package:my_chat_app/chat/room_bloc/room_state.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/loading_body_room_widget.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/room_widgets.dart';

class BodyRoomScreenWidget extends StatefulWidget {
  const BodyRoomScreenWidget({super.key});

  @override
  State<BodyRoomScreenWidget> createState() => _BodyRoomScreenWidgetState();
}

class _BodyRoomScreenWidgetState extends State<BodyRoomScreenWidget> {
  int _limit = 20;

  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(_scrollListener);
  }

  void _scrollListener() {
    if ((controller.position.pixels + 300) >=
        controller.position.maxScrollExtent) {
      _limit = _limit + 20;
      context.read<RoomBloc>().add(RoomEvent.getChatMessage(limit: _limit));
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.removeListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.78,
      width: screenSize.width,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: BlocBuilder<RoomBloc, RoomState>(
        builder: (BuildContext context, state) {
          return state.maybeWhen(
            messagesloaded: (messages) => StreamBuilder<List<ChatMessage>>(
              stream: messages,
              builder: (
                BuildContext context,
                AsyncSnapshot<List<ChatMessage>> snapshot,
              ) {
                final chatMessages = snapshot.data;
                if (chatMessages?.isNotEmpty ?? false) {
                  if (chatMessages!.first.idTo ==
                      context.read<RoomBloc>().currentUserId) {
                    context.read<RoomBloc>().add(
                          RoomEvent.updateUnreadMessage(
                            chatMessage: chatMessages.first,
                            docPath: chatMessages.first.timestamp!,
                          ),
                        );
                  }
                  return ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: snapshot.data?.length,
                    controller: controller,
                    reverse: true,
                    itemBuilder: (context, index) {
                      final currentMessageTimeStamp =
                          DateTime.fromMillisecondsSinceEpoch(
                        int.parse(chatMessages[index].timestamp!),
                      );

                      final lastMessageTimeStamp = index >= 1
                          ? DateTime.fromMillisecondsSinceEpoch(
                              int.parse(
                                chatMessages[index - 1].timestamp!,
                              ),
                            )
                          : currentMessageTimeStamp;

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (currentMessageTimeStamp.day >
                              lastMessageTimeStamp.day)
                            DayTimeStampWidget(
                              chatMessages: chatMessages[index],
                            ),
                          MessagesListWidget(index, chatMessages[index]),
                        ],
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: Text('Sin mensajes...'),
                  );
                }
              },
            ),
            loading: () => SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children:
                    List.generate(3, (index) => const LoadingBodyRoomWidget()),
              ),
            ),
            orElse: Container.new,
          );
        },
      ),
    );
  }
}

class DayTimeStampWidget extends StatelessWidget {
  const DayTimeStampWidget({
    super.key,
    required this.chatMessages,
  });

  final ChatMessage chatMessages;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Divider(
              color: Colors.grey[300],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              DateFormat('EEE, M/d').format(
                DateTime.fromMillisecondsSinceEpoch(
                  int.parse(chatMessages.timestamp!),
                ),
              ),
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontFamily: 'Inter',
              ),
            ),
          ),
          Flexible(
            child: Divider(
              color: Colors.grey[300],
            ),
          ),
        ],
      ),
    );
  }
}

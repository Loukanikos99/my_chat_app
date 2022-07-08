import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_chat_app/chat/room_bloc/room_bloc.dart';
import 'package:my_chat_app/chat/room_bloc/room_event.dart';
import 'package:my_chat_app/chat/room_bloc/room_state.dart';
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

  List<QueryDocumentSnapshot> listMessages = [];

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
              messagesloaded: (messages) => StreamBuilder<QuerySnapshot>(
                    stream: messages,
                    builder: (
                      BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot,
                    ) {
                      if (snapshot.hasData) {
                        listMessages = snapshot.data!.docs;

                        if (listMessages.isNotEmpty) {
                          if (listMessages.first['idTo'] ==
                              context.read<RoomBloc>().currentUserId) {
                            context
                                .read<RoomBloc>()
                                .add(RoomEvent.updateUnreadMessage(
                                  chatMessage: listMessages.first,
                                  docPath: listMessages.first.id,
                                ));
                          }
                          return ListView.builder(
                            padding: const EdgeInsets.all(10),
                            itemCount: snapshot.data?.docs.length,
                            controller: controller,
                            reverse: true,
                            itemBuilder: (context, index) {
                              final chatMessages = ChatMessage.fromDocument(
                                snapshot.data?.docs[index] as DocumentSnapshot,
                              );

                              final currentMessageTimeStamp =
                                  DateTime.fromMillisecondsSinceEpoch(
                                int.parse(chatMessages.timestamp as String),
                              );

                              final lastMessageTimeStamp = index >= 1
                                  ? DateTime.fromMillisecondsSinceEpoch(
                                      int.parse(
                                        snapshot.data?.docs[index - 1]
                                            ['timestamp'] as String,
                                      ),
                                    )
                                  : currentMessageTimeStamp;

                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (currentMessageTimeStamp.day >
                                      lastMessageTimeStamp.day)
                                    DayTimeStampWidget(
                                        chatMessages: chatMessages),
                                  MessagesListWidget(index, chatMessages),
                                ],
                              );
                            },
                          );
                        } else {
                          return const Center(
                            child: Text('Sin mensajes...'),
                          );
                        }
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.teal,
                          ),
                        );
                      }
                    },
                  ),
              orElse: () => Container());
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
                  int.parse(chatMessages.timestamp as String),
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

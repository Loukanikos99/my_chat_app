import 'package:chat_app_client/chat_app_client.dart';
import 'package:chat_app_client/models/chat_messaging_model.dart';
import 'package:chat_app_client/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_chat_app/chat/room_bloc/room_bloc.dart';
import 'package:my_chat_app/chat/room_bloc/room_event.dart';
import 'package:my_chat_app/chat/room_bloc/room_state.dart';
import 'package:my_chat_app/chat/view/room_screen.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/widgets_chat_screens.dart';

class ListTileChatScreenWidget extends StatefulWidget {
  const ListTileChatScreenWidget({
    super.key,
    required this.user,
  });

  final User user;

  @override
  State<ListTileChatScreenWidget> createState() =>
      _ListTileChatScreenWidgetState();
}

class _ListTileChatScreenWidgetState extends State<ListTileChatScreenWidget> {
  @override
  void initState() {
    context.read<RoomBloc>().add(const RoomEvent.getChatMessage(limit: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = widget.user;
    final currentUserId = context.read<RoomBloc>().currentUserId;

    final screenSize = MediaQuery.of(context).size;

    return BlocBuilder<RoomBloc, RoomState>(
      builder: (BuildContext context, state) {
        return state.maybeWhen(
          messagesloaded: (messages) => StreamBuilder<List<ChatMessage>>(
            stream: messages,
            builder: (context, AsyncSnapshot<List<ChatMessage>> snapshot) {
              String? timeAgo;

              if (snapshot.data?.isNotEmpty ?? false) {
                if (snapshot.data?.last.isRead == false &&
                    snapshot.data?.last.idTo == currentUserId) {
                  final timeSended = DateTime.fromMillisecondsSinceEpoch(
                    int.parse(snapshot.data?.last.timestamp as String),
                  );

                  timeAgo = DateTime.now()
                      .difference(timeSended)
                      .inMinutes
                      .toString();
                }

                return GestureDetector(
                  onTap: () {
                    Navigator.push<dynamic>(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (context) => BlocProvider(
                          create: (context) => RoomBloc(
                            chatAppClient: ChatAppClient(),
                            otherUser: user,
                          ),
                          child: const RoomScreen(),
                        ),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: screenSize.width * 0.05),
                          ListTileUserImageWidget(userChat: user),
                          SizedBox(width: screenSize.width * 0.05),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ListTileUserNameWidget(userChat: user),
                              const SizedBox(height: 10),
                              if (snapshot.data?.last.type == 0)
                                Text(
                                  (snapshot.data?.last.content)
                                              .toString()
                                              .length <
                                          25
                                      ? (snapshot.data?.last.content).toString()
                                      : (snapshot.data?.last.content)
                                          .toString()
                                          .substring(0, 25),
                                )
                              else
                                const Text('Te han enviado una imagen')
                            ],
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 45,
                            width: 60,
                            child: NotReadMessagesWidget(timeAgo?.toString()),
                          ),
                          SizedBox(width: screenSize.width * 0.05),
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
          orElse: ListTileEmptyWidget.new,
        );
      },
    );
  }
}

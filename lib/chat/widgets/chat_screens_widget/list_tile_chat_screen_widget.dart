import 'package:chat_client_repository/chat_app_client.dart';
import 'package:chat_client_repository/models/chat_messaging_model.dart';
import 'package:chat_client_service/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_chat_app/chat/room_bloc/room_bloc.dart';
import 'package:my_chat_app/chat/room_bloc/room_event.dart';
import 'package:my_chat_app/chat/room_bloc/room_state.dart';
import 'package:my_chat_app/chat/view/room_screen.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/widgets_chat_screens.dart';
import 'package:my_chat_app/l10n/l10n.dart';

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

  String _getMessageTimeAgoSended(String lastMessageTimeStamp) {
    String? timeAgo;
    final timeSended = DateTime.fromMillisecondsSinceEpoch(
      int.parse(lastMessageTimeStamp),
    );
    final timeAgoValue = DateTime.now().difference(timeSended).inMinutes;
    timeAgo = '${DateTime.now().difference(timeSended).inMinutes} m ago';
    if (timeAgoValue > 60) {
      timeAgo = '${timeAgoValue / 60} hs ago';
    }
    if (timeAgoValue > 1440 && timeAgoValue < 2880) {
      timeAgo = 'Yesteday';
    }
    if (timeAgoValue > 2880) {
      timeAgo = '${DateTime.now().difference(timeSended).inDays} days ago';
    }
    return timeAgo;
  }

  @override
  Widget build(BuildContext context) {
    final user = widget.user;
    final currentUserId = context.read<RoomBloc>().currentUserId;

    final screenSize = MediaQuery.of(context).size;
    final l10n = context.l10n;

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
                  timeAgo =
                      _getMessageTimeAgoSended(snapshot.data!.last.timestamp!);
                }

                return GestureDetector(
                  onTap: () {
                    Navigator.push<dynamic>(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (context) => BlocProvider(
                          create: (context) => RoomBloc(
                            chatClientRepo:
                                RepositoryProvider.of<ChatClientRepository>(
                              context,
                            ),
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
                                Text(l10n.youHaveBeenSentAPicture)
                            ],
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 45,
                            width: 60,
                            child: NotReadMessagesWidget(timeAgo),
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

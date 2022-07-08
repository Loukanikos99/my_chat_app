import 'package:chat_app_client/chat_app_client.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_chat_app/chat/room_bloc/room_bloc.dart';
import 'package:my_chat_app/chat/room_bloc/room_state.dart';
import 'package:my_chat_app/chat/view/room_screen.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/list_tile_user_image_widget.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/list_tile_user_name_widget.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/list_tiles.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/not_read_messages_widget.dart';
import 'package:provider/provider.dart';

class ListTileChatScreenWidget extends StatelessWidget {
  ListTileChatScreenWidget({
    super.key,
    this.documentSnapshot,
  });

  final DocumentSnapshot? documentSnapshot;

  List<QueryDocumentSnapshot> listMessages = [];

  @override
  Widget build(BuildContext context) {
    final userChat = User.fromDocument(documentSnapshot!);

    final currentUserId = context.read<RoomBloc>().currentUserId;

    final screenSize = MediaQuery.of(context).size;

    return BlocBuilder<RoomBloc, RoomState>(
      builder: (BuildContext context, state) {
        return state.maybeWhen(
          messagesloaded: (messages) => StreamBuilder<QuerySnapshot>(
            stream: messages,
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasData) {
                listMessages = snapshot.data!.docs;
                String? timeAgo;

                if (listMessages.isNotEmpty) {
                  if (listMessages.last['isRead'] == false &&
                      listMessages.last['idTo'] == currentUserId) {
                    var timeSended = DateTime.fromMillisecondsSinceEpoch(
                      int.parse(listMessages.last['timestamp'] as String),
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
                                  otherUser: userChat),
                              child: const RoomScreen(),
                            ),
                          ));
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: screenSize.width * 0.05),
                            ListTileUserImageWidget(userChat: userChat),
                            SizedBox(width: screenSize.width * 0.05),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListTileUserNameWidget(userChat: userChat),
                                const SizedBox(height: 10),
                                if (listMessages.last['type'] == 0)
                                  Text(
                                    (listMessages.last['content'])
                                                .toString()
                                                .length <
                                            25
                                        ? (listMessages.last['content'])
                                            .toString()
                                        : (listMessages.last['content'])
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
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
          orElse: () => Container(),
        );
      },
    );
  }
}

import 'package:chat_app_client/chat_app_client.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_chat_app/chat/room_bloc/room_bloc.dart';
import 'package:my_chat_app/chat/view/room_screen.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/list_tile_user_image_widget.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/list_tile_user_name_widget.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/list_tiles.dart';

class ListTileAddNewScreenWidget extends StatelessWidget {
  const ListTileAddNewScreenWidget({super.key, required this.documentSnapshot});

  final DocumentSnapshot? documentSnapshot;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final userChat = User.fromDocument(documentSnapshot!);
    return GestureDetector(
      onTap: () {
        Navigator.push<dynamic>(
          context,
          MaterialPageRoute<dynamic>(
            builder: (context) => BlocProvider(
              create: (context) => RoomBloc(
                otherUser: userChat,
                chatAppClient: ChatAppClient(),
              ),
              child: const RoomScreen(),
            ),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: screenSize.width * 0.05),
              ListTileUserImageWidget(userChat: userChat),
              SizedBox(width: screenSize.width * 0.1),
              ListTileUserNameWidget(userChat: userChat),
              const Spacer(),
              const Icon(Icons.arrow_forward_rounded),
              SizedBox(width: screenSize.width * 0.1),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}

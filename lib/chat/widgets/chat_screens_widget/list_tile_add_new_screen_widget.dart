import 'package:chat_client_repository/chat_app_client.dart';
import 'package:chat_client_service/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_chat_app/chat/room_bloc/room_bloc.dart';
import 'package:my_chat_app/chat/view/room_screen.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/widgets_chat_screens.dart';

class ListTileAddNewScreenWidget extends StatelessWidget {
  const ListTileAddNewScreenWidget({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push<dynamic>(
          context,
          MaterialPageRoute<dynamic>(
            builder: (context) => BlocProvider(
              create: (context) => RoomBloc(
                otherUser: user,
                chatClientRepo:
                    RepositoryProvider.of<ChatClientRepository>(context),
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
              ListTileUserImageWidget(userChat: user),
              SizedBox(width: screenSize.width * 0.1),
              ListTileUserNameWidget(userChat: user),
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

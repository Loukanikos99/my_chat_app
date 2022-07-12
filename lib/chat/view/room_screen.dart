import 'package:chat_app_client/constants/firestore_constants.dart';
import 'package:chat_app_client/models/chat_messaging_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_chat_app/chat/room_bloc/room_bloc.dart';
import 'package:my_chat_app/chat/room_bloc/room_event.dart';
import 'package:my_chat_app/chat/room_bloc/room_state.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/body_room_screen_widget.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/message_input_widget.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/user_image_widget.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  final currentUserId = auth.FirebaseAuth.instance.currentUser?.uid;

  bool isShowSticker = false;

  final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    context.read<RoomBloc>().add(const RoomEvent.getChatMessage(limit: 20));
    super.initState();
    focusNode.addListener(onFocusChanged);
  }

  void onFocusChanged() {
    if (focusNode.hasFocus) {
      setState(() {
        isShowSticker = false;
      });
    }
  }

  void getSticker() {
    focusNode.unfocus();
    setState(() {
      isShowSticker = !isShowSticker;
    });
  }

  Future<bool> onBackPressed() {
    if (isShowSticker) {
      setState(() {
        isShowSticker = false;
      });
    } else {
      context.read<RoomBloc>().add(
            RoomUpdateFirebaseDataEvent(
              collectionPath: FirestoreConstants.pathUserCollection,
              docPath: currentUserId!,
              dataUpdate: <String, dynamic>{
                FirestoreConstants.chattingWith: null
              },
            ),
          );
    }
    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const UserImageWidget(height: 40, width: 40),
            const SizedBox(width: 5),
            Text(
              context.read<RoomBloc>().otherUser?.name ?? 'Anonimous',
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 25),
          ],
        ),
      ),
      body: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Column(
            children: [
              const BodyRoomScreenWidget(),
              const SizedBox(height: 20, child: ViewLastMessageWidget()),
              MessageInputWidget(
                focusNode: focusNode,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ViewLastMessageWidget extends StatelessWidget {
  const ViewLastMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomBloc, RoomState>(
      builder: (context, state) {
        return state.maybeWhen(
          messagesloaded: (messagges) => StreamBuilder(
            stream: messagges,
            builder: (context, AsyncSnapshot<List<ChatMessage>> snapshot) {
              if (snapshot.data?.isNotEmpty ?? false) {
                return SizedBox(
                  height: 20,
                  child: Text(
                    snapshot.data?.last.isRead == true ? 'Leído' : '',
                  ),
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}

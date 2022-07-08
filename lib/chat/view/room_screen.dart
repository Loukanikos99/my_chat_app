import 'package:chat_app_client/constants/firestore_constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:my_chat_app/chat/provider/chat_provider.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/body_room_screen_widget.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/message_input_widget.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/user_image_widget.dart';
import 'package:provider/provider.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  final currentUserId = auth.FirebaseAuth.instance.currentUser?.uid;

  bool isShowSticker = false;

  final FocusNode focusNode = FocusNode();

  late ChatProvider chatProvider;

  @override
  void initState() {
    super.initState();
    chatProvider = context.read<ChatProvider>();
    focusNode.addListener(onFocusChanged);
    chatProvider.readLocal();
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
      chatProvider.updateFirestoreData(
        FirestoreConstants.pathUserCollection,
        currentUserId!,
        <String, dynamic>{FirestoreConstants.chattingWith: null},
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
            UserImageWidget(chatProvider: chatProvider, height: 40, width: 40),
            const SizedBox(width: 5),
            Text(chatProvider.otherUser?.name?.trim() ?? ''),
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
                controller: chatProvider.textEditingController,
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
    return StreamBuilder(
      stream: context.read<ChatProvider>().getChatMessage(1),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasData) {
          final listMessages = snapshot.data!.docs;
          if (listMessages.isNotEmpty) {
            return SizedBox(
              height: 20,
              child: Text(listMessages.last['isRead'] == true ? 'Leído' : ''),
            );
          } else {
            return const SizedBox.shrink();
          }
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}

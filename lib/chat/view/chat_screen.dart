import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
import 'package:my_chat_app/auth/bloc/auth_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_event.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_bloc.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_event.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_state.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/chat_search_bar_widget.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/list_tile_chat_screen_widget.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/list_tile_empty_widget.dart';
import 'package:my_chat_app/resources/text_styles.dart';
import 'package:my_chat_app/routes/route_list.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  void initState() {
    context.read<ChatBloc>().add(
          const ChatEvent.getUsersAlreadyInChat(limit: 20),
        );
    super.initState();
  }

  final TextEditingController controller = TextEditingController();

  Debouncer searchDebouncer =
      Debouncer(delay: const Duration(milliseconds: 300));

  StreamController<bool> buttonClearController = StreamController<bool>();

  TextEditingController searchTextEditingController = TextEditingController();

  String _textSearch = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: TextButton(
          child: const Text('Salir'),
          onPressed: () =>
              context.read<AuthBloc>().add(const AuthSignOutEvent()),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Chats',
          style: TextStyles.h1(context),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, RouteList.addChat),
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            ChatSearchBarWidget(
              controller: controller,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  buttonClearController.add(true);
                  setState(() {
                    _textSearch = value;
                  });
                } else {
                  buttonClearController.add(false);
                  setState(() {
                    _textSearch = '';
                  });
                }
              },
            ),
            const SizedBox(height: 20),
            BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => Container(),
                  usersLoaded: (users) => Expanded(
                    child: context.read<ChatBloc>().currentUserId != null
                        ? StreamBuilder<QuerySnapshot>(
                            stream: users,
                            builder: (
                              BuildContext context,
                              AsyncSnapshot<QuerySnapshot> snapshot,
                            ) {
                              if (snapshot.hasData) {
                                if ((snapshot.data?.docs.length ?? 0) > 0) {
                                  return ListView.separated(
                                    shrinkWrap: true,
                                    itemCount: snapshot.data!.docs.length,
                                    itemBuilder: (context, index) =>
                                        ListTileChatScreenWidget(
                                      documentSnapshot:
                                          snapshot.data?.docs[index],
                                    ),
                                    separatorBuilder:
                                        (BuildContext context, int index) =>
                                            const Divider(),
                                  );
                                } else {
                                  return const Center(
                                    child: Text('Comienze un nuevo chat!'),
                                  );
                                }
                              } else {
                                return Column(
                                  children: List.generate(
                                    5,
                                    (index) => const ListTileEmptyWidget(),
                                  ),
                                );
                              }
                            },
                          )
                        : const Center(
                            child: Text(
                              'Debe iniciar sesión para tener acceso al chat.',
                            ),
                          ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

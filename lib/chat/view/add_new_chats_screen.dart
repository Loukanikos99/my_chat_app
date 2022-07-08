import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_bloc.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_event.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_state.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/chat_search_bar_widget.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/list_tile_add_new_screen_widget.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/list_tile_empty_widget.dart';

class AddNewChatsScreen extends StatefulWidget {
  const AddNewChatsScreen({super.key});

  @override
  State<AddNewChatsScreen> createState() => _AddNewChatsScreenState();
}

class _AddNewChatsScreenState extends State<AddNewChatsScreen> {
  @override
  void initState() {
    context.read<ChatBloc>().add(
          const ChatEvent.getUsers(limit: 20),
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
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chats',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(height: 50),
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
            SizedBox(height: screenSize.height * 0.05),
            StreamBuilder(
              stream: buttonClearController.stream,
              builder: (context, snapshot) {
                return snapshot.data == true
                    ? GestureDetector(
                        onTap: () {
                          searchTextEditingController.clear();
                          buttonClearController.add(false);
                          setState(() {
                            _textSearch = '';
                          });
                        },
                        child: const Icon(
                          Icons.clear_rounded,
                          color: Colors.grey,
                          size: 20,
                        ),
                      )
                    : const SizedBox.shrink();
              },
            ),
            Expanded(
              child: BlocBuilder<ChatBloc, ChatState>(
                builder: (BuildContext context, state) {
                  return state.maybeWhen(
                    usersLoaded: (users) => StreamBuilder<QuerySnapshot>(
                      // TODO:
                      // En su debido tiempo cambiar el limite para que sea paginado.
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
                                  ListTileAddNewScreenWidget(
                                documentSnapshot: snapshot.data?.docs[index],
                              ),
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const Divider(),
                            );
                          } else {
                            return const Center(
                              child: Text('No user found...'),
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
                    ),
                    orElse: () {
                      return Container();
                    },
                  );
                },
              ),
            ),
            SizedBox(height: screenSize.height * 0.05),
          ],
        ),
      ),
    );
  }
}

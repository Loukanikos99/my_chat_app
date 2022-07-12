import 'dart:async';

import 'package:chat_app_client/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_bloc.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_event.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_state.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/widgets_chat_screens.dart';
import 'package:my_chat_app/resources/text_styles.dart';

class AddNewChatsScreen extends StatefulWidget {
  const AddNewChatsScreen({super.key});

  @override
  State<AddNewChatsScreen> createState() => _AddNewChatsScreenState();
}

class _AddNewChatsScreenState extends State<AddNewChatsScreen> {
  @override
  void initState() {
    context.read<ChatBloc>().add(
          ChatEvent.getUsers(limit: 20, textSearch: _textSearch),
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
        title: Text(
          'Chats',
          style: TextStyles.h1(context),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
            const ChatsListWidget(),
            SizedBox(height: screenSize.height * 0.05),
          ],
        ),
      ),
    );
  }
}

class ChatsListWidget extends StatelessWidget {
  const ChatsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ChatBloc, ChatState>(
        builder: (BuildContext context, state) {
          return state.maybeWhen(
            orElse: Container.new,
            loading: () => Column(
              children: List.generate(
                5,
                (index) => const ListTileEmptyWidget(),
              ),
            ),
            usersLoaded: (users) => StreamBuilder<List<User>>(
              stream: users,
              builder: (
                BuildContext context,
                AsyncSnapshot<List<User>> snapshot,
              ) {
                if ((snapshot.data?.length ?? 0) > 0) {
                  return ListView.separated(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) => ListTileAddNewScreenWidget(
                      user: snapshot.data![index],
                    ),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  );
                } else {
                  return const Center(
                    child: Text('No user found...'),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}

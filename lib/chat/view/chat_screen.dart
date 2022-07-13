import 'dart:async';
import 'package:chat_client_repository/chat_app_client.dart';
import 'package:chat_client_service/chat_client_service.dart';
import 'package:chat_client_service/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
import 'package:my_chat_app/auth/bloc/auth_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_event.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_bloc.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_event.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_state.dart';
import 'package:my_chat_app/chat/room_bloc/room_bloc.dart';
import 'package:my_chat_app/chat/widgets/chat_screens_widget/widgets_chat_screens.dart';
import 'package:my_chat_app/l10n/l10n.dart';
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
          ChatEvent.getUsersAlreadyWithChat(limit: 20, textSearch: _textSearch),
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
    final _chatClientRepo = ChatClientRepository(
      chatClientService: RepositoryProvider.of<ChatClientService>(context),
    );
    final l10n = context.l10n;
    return Scaffold(
      drawer: Drawer(
        child: TextButton(
          child: Text(l10n.logout),
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
            ChatsListChatScreenWidget(chatClientRepo: _chatClientRepo),
          ],
        ),
      ),
    );
  }
}

class ChatsListChatScreenWidget extends StatelessWidget {
  const ChatsListChatScreenWidget({
    super.key,
    required ChatClientRepository chatClientRepo,
  }) : _chatClientRepo = chatClientRepo;

  final ChatClientRepository _chatClientRepo;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Column(
            children: List.generate(
              5,
              (index) => const ListTileEmptyWidget(),
            ),
          ),
          usersLoaded: (users) => Expanded(
            child: StreamBuilder<List<User>>(
              stream: users,
              builder: (
                BuildContext context,
                AsyncSnapshot<List<User>> snapshot,
              ) {
                if ((snapshot.data?.length ?? 0) > 0) {
                  return ListView.separated(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return BlocProvider.value(
                        value: RoomBloc(
                          chatClientRepo: _chatClientRepo,
                          otherUser: snapshot.data![index],
                        ),
                        child: ListTileChatScreenWidget(
                          user: snapshot.data![index],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  );
                } else {
                  return Center(child: Text(l10n.startANewChat));
                }
              },
            ),
          ),
        );
      },
    );
  }
}

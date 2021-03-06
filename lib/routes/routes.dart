import 'package:chat_client_repository/chat_app_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_chat_app/auth/view/login_screen.dart';
import 'package:my_chat_app/auth/view/register_screen.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_bloc.dart';
import 'package:my_chat_app/chat/view/add_new_chats_screen.dart';
import 'package:my_chat_app/landing/landing.dart';
import 'package:my_chat_app/routes/route_list.dart';

final routes = <String, Widget Function(BuildContext)>{
  RouteList.addChat: (BuildContext context) => BlocProvider(
        create: (context) => ChatBloc(
          chatClientRepo: RepositoryProvider.of<ChatClientRepository>(context),
        ),
        child: const AddNewChatsScreen(),
      ),
  RouteList.login: (BuildContext context) => const LoginScreen(),
  RouteList.register: (BuildContext context) => RegisterScreen(),
  RouteList.landing: (BuildContext context) => const LandingPage()
};

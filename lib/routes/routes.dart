import 'package:flutter/material.dart';
import 'package:my_chat_app/auth/view/login_page.dart';
import 'package:my_chat_app/auth/view/register_page.dart';
import 'package:my_chat_app/chat/view/add_new_chats_screen.dart';
import 'package:my_chat_app/chat/widgets/room_widgets/room_widgets.dart';
import 'package:my_chat_app/landing/landing.dart';
import 'package:my_chat_app/routes/route_list.dart';
import 'package:provider/provider.dart';

final routes = <String, Widget Function(BuildContext)>{
  RouteList.addChat: (BuildContext context) => ChangeNotifierProvider(
      create: (BuildContext context) => ChatProvider(),
      child: const AddNewChatsScreen()),
  RouteList.login: (BuildContext context) => const LoginScreen(),
  RouteList.register: (BuildContext context) => RegisterScreen(),
  RouteList.landing: (BuildContext context) => const LandingPage()
};

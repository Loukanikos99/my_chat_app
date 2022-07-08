import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_state.dart';
import 'package:my_chat_app/auth/view/login_page.dart';
import 'package:my_chat_app/chat/provider/chat_provider.dart';
import 'package:my_chat_app/chat/view/chat_screen.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (BuildContext context, state) {
        return state.maybeWhen(
          authenticated: (user) => ChangeNotifierProvider(
            create: (BuildContext context) => ChatProvider(),
            child: const ChatScreen(),
          ),
          unauthenticated: () => const LoginScreen(),
          orElse: () => const LoginScreen(),
        );
      },
    );
  }
}

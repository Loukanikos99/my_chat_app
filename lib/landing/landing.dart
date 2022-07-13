import 'package:chat_client_repository/chat_app_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_state.dart';
import 'package:my_chat_app/auth/view/login_screen.dart';
import 'package:my_chat_app/chat/chat_bloc/chat_bloc.dart';
import 'package:my_chat_app/chat/view/chat_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (BuildContext context, state) {
        return state.maybeWhen(
          authenticated: (user) => BlocProvider(
            create: (context) => ChatBloc(
              chatClientRepo:
                  RepositoryProvider.of<ChatClientRepository>(context),
            ),
            child: const ChatScreen(),
          ),
          unauthenticated: () => const LoginScreen(),
          orElse: () => const LoginScreen(),
        );
      },
    );
  }
}

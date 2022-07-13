import 'package:chat_client_repository/chat_app_client.dart';
import 'package:chat_client_service/chat_client_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_chat_app/auth/bloc/auth_bloc.dart';
import 'package:my_chat_app/l10n/l10n.dart';
import 'package:my_chat_app/routes/route_list.dart';
import 'package:my_chat_app/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => ChatClientService(),
        ),
        RepositoryProvider(
          create: (context) => ChatClientRepository(
            chatClientService:
                RepositoryProvider.of<ChatClientService>(context),
          ),
        )
      ],
      child: BlocProvider(
        create: (context) => AuthBloc(
          chatClientRepo: RepositoryProvider.of<ChatClientRepository>(context),
        ),
        child: MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          debugShowCheckedModeBanner: false,
          initialRoute: RouteList.landing,
          routes: routes,
        ),
      ),
    );
  }
}

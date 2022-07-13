import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_chat_app/auth/bloc/auth_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_event.dart';
import 'package:my_chat_app/auth/bloc/auth_state.dart';

class ProfileImageWidget extends StatefulWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  State<ProfileImageWidget> createState() => _ProfileImageWidgetState();
}

class _ProfileImageWidgetState extends State<ProfileImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 200,
            width: 200,
            color: Colors.grey[350],
            child: Center(
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => CircularProgressIndicator(
                      color: Colors.blue[900],
                    ),
                    loadedProfileImage: (imageFilePath) => Image.file(
                      File(imageFilePath),
                      fit: BoxFit.cover,
                    ),
                    orElse: () => const FaIcon(FontAwesomeIcons.user, size: 80),
                  );
                },
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 5),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          child: Center(
            child: IconButton(
              onPressed: () async => context.read<AuthBloc>().add(
                    const AuthEvent.getProfileImage(),
                  ),
              icon: const FaIcon(FontAwesomeIcons.images),
            ),
          ),
        ),
      ],
    );
  }
}

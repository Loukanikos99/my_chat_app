import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_chat_app/auth/bloc/auth_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_event.dart';
import 'package:my_chat_app/resources/text_styles.dart';

class GoogleSignInButtonWidget extends StatelessWidget {
  const GoogleSignInButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<AuthBloc>().add(const AuthEvent.googleSignIn()),
      child: Container(
        width: 300,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: Colors.grey[300]!, blurRadius: 10)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const FaIcon(FontAwesomeIcons.google),
            Text(
              'Iniciar Sesión con Google',
              style: TextStyles.sH2(context),
            )
          ],
        ),
      ),
    );
  }
}

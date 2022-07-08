import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_event.dart';
import 'package:my_chat_app/auth/bloc/auth_state.dart';
import 'package:my_chat_app/resources/text_styles.dart';

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({
    super.key,
    required TextEditingController password,
    required TextEditingController email,
  })  : _password = password,
        _email = email;

  final TextEditingController _password;
  final TextEditingController _email;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<AuthBloc>().add(
              AuthEvent.signIn(
                password: _password.text,
                username: _email.text,
              ),
            );
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFF192866),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Center(child: CircularProgressIndicator()),
            ),
            orElse: () => Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFF192866),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  'Iniciar Sesión',
                  style: TextStyles.b1(context),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_event.dart';
import 'package:my_chat_app/auth/bloc/auth_state.dart';
import 'package:my_chat_app/l10n/l10n.dart';
import 'package:my_chat_app/resources/text_styles.dart';

class SignInButtonWidget extends StatelessWidget {
  const SignInButtonWidget({
    super.key,
    required TextEditingController password,
    required TextEditingController email,
    required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        _password = password,
        _email = email;

  final TextEditingController _password;
  final TextEditingController _email;
  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return GestureDetector(
      onTap: () {
        if (_formKey.currentState?.validate() ?? false) {
          context.read<AuthBloc>().add(
                AuthEvent.signIn(
                  password: _password.text,
                  username: _email.text,
                ),
              );
        }
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
            //TODO Agregar un snakbar cuando ya sepa como implementarlo.
            // failed: (error)  =>,
            orElse: () => Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFF192866),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  l10n.login,
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

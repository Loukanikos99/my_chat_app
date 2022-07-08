import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_bloc.dart';
import 'package:my_chat_app/auth/bloc/auth_event.dart';
import 'package:my_chat_app/resources/text_styles.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({
    super.key,
    required TextEditingController password,
    required TextEditingController email,
    required TextEditingController name,
  })  : _password = password,
        _email = email,
        _name = name;

  final TextEditingController _password;
  final TextEditingController _email;
  final TextEditingController _name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<AuthBloc>().add(
              AuthEvent.register(
                name: _name.text,
                password: _password.text,
                email: _email.text,
              ),
            );
      },
      child: Container(
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
  }
}

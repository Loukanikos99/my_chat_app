import 'package:flutter/material.dart';
import 'package:my_chat_app/auth/widgets/widgets.dart';
import 'package:my_chat_app/resources/text_styles.dart';
import 'package:my_chat_app/routes/route_list.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final _password = TextEditingController();
  final _email = TextEditingController();
  final _name = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            const ProfileImageWidget(),
            const SizedBox(height: 50),
            TextFormFieldsColumnWidget.register(
              formKey: _formKey,
              password: _password,
              email: _email,
              name: _name,
            ),
            RegisterButtonWidget(
              password: _password,
              email: _email,
              name: _name,
            ),
            const SizedBox(height: 50),
            const LoginSectionWidget()
          ],
        ),
      ),
    );
  }
}

class LoginSectionWidget extends StatelessWidget {
  const LoginSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿Ya tienes cuenta?',
          style: TextStyles.tB1(context),
        ),
        const SizedBox(width: 5),
        TextButton(
          child: Text(
            'Logeate',
            style: TextStyles.tB4(context),
          ),
          onPressed: () => Navigator.pushNamed(
            context,
            RouteList.login,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_chat_app/auth/widgets/widgets.dart';
import 'package:my_chat_app/l10n/l10n.dart';
import 'package:my_chat_app/resources/text_styles.dart';
import 'package:my_chat_app/routes/route_list.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _password = TextEditingController();
  final _email = TextEditingController();
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
            const SizedBox(height: 100),
            TextFormFieldsColumnWidget.login(
              formKey: _formKey,
              password: _password,
              email: _email,
            ),
            SignInButtonWidget(password: _password, email: _email),
            const SizedBox(height: 30),
            const GoogleSignInButtonWidget(),
            const SizedBox(height: 50),
            const RegisterSectionWidget()
          ],
        ),
      ),
    );
  }
}

class RegisterSectionWidget extends StatelessWidget {
  const RegisterSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          l10n.dontYouHaveAnAccountYet,
          style: TextStyles.tB1(context),
        ),
        const SizedBox(width: 5),
        TextButton(
          child: Text(
            'Registrate',
            style: TextStyles.tB4(context),
          ),
          onPressed: () => Navigator.pushNamed(
            context,
            RouteList.register,
          ),
        ),
      ],
    );
  }
}

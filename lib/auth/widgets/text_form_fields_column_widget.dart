import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_chat_app/l10n/l10n.dart';
import 'package:my_chat_app/resources/text_styles.dart';

class TextFormFieldsColumnWidget extends StatelessWidget {
  const TextFormFieldsColumnWidget.login({
    super.key,
    required TextEditingController email,
    required TextEditingController password,
    required GlobalKey<FormState> formKey,
  })  : _contructor = Contructors.login,
        _formKey = formKey,
        _email = email,
        _password = password,
        _name = null;

  const TextFormFieldsColumnWidget.register({
    super.key,
    required TextEditingController email,
    required TextEditingController password,
    required TextEditingController name,
    required GlobalKey<FormState> formKey,
  })  : _contructor = Contructors.register,
        _formKey = formKey,
        _email = email,
        _password = password,
        _name = name;

  final TextEditingController _email;
  final TextEditingController _password;
  final TextEditingController? _name;
  final GlobalKey<FormState> _formKey;
  final Contructors _contructor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final l10n = context.l10n;

    return SizedBox(
      width: kIsWeb ? 400 : size.width * 0.8,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            if (_contructor == Contructors.register)
              TextFormField(
                controller: _name,
                autofillHints: const [AutofillHints.name],
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.name,
                style: TextStyles.input(context),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_box,
                    color: Colors.grey[400],
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 5),
                  ),
                  errorStyle: const TextStyle(fontSize: 10),
                  labelText: l10n.fullName,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return l10n.thisFieldIsRequired;
                  }
                  return null;
                },
              ),
            SizedBox(height: size.height * 0.02),
            TextFormField(
              controller: _email,
              autofillHints: const [AutofillHints.email],
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.emailAddress,
              style: TextStyles.input(context),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 5),
                ),
                errorStyle: const TextStyle(fontSize: 10),
                labelText: l10n.email,
              ),
              validator: (value) {
                const pattern =
                    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                    r'{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]'
                    r'{0,253}[a-zA-Z0-9])?)*$';
                final regex = RegExp(pattern);
                if (value == null || value.isEmpty) {
                  return l10n.thisFieldIsRequired;
                }
                if (!regex.hasMatch(value)) {
                  return 'error';
                }
                return null;
              },
            ),
            SizedBox(height: size.height * 0.02),
            TextFormField(
              controller: _password,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              autofillHints: const [AutofillHints.password],
              style: TextStyles.input(context),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  FontAwesomeIcons.lock,
                  color: Colors.grey[400],
                ),
                errorStyle: const TextStyle(fontSize: 10),
                labelText: l10n.password,
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 5),
                ),
              ),
              validator: (value) {
                if (value == '') {
                  return l10n.thisFieldIsRequired;
                }
                return null;
              },
            ),
            SizedBox(height: size.height * 0.1),
          ],
        ),
      ),
    );
  }
}

enum Contructors { login, register }

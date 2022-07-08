import 'package:flutter/material.dart';
import 'package:my_chat_app/resources/text_styles.dart';

class GoogleSignInButtonWidget extends StatelessWidget {
  const GoogleSignInButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => context.read<AuthBloc>(),
      child: Container(
        width: 300,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: Colors.grey[200]!, blurRadius: 10)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.aspect_ratio),
            Text('Iniciar Sesión con Google', style: TextStyles.b1(context))
          ],
        ),
      ),
    );
  }
}

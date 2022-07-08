import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_chat_app/auth/widgets/register_button_widget.dart';
import 'package:my_chat_app/auth/widgets/text_form_fields_column_widget.dart';
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
            const SizedBox(height: 30),
            const LoginSectionWidget()
          ],
        ),
      ),
    );
  }
}

class ProfileImageWidget extends StatefulWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  State<ProfileImageWidget> createState() => _ProfileImageWidgetState();
}

class _ProfileImageWidgetState extends State<ProfileImageWidget> {
  File? imageFile;

  String imageUrl = '';

  Future getImage() async {
    final firebaseStorage = FirebaseStorage.instance;
    final imagePicker = ImagePicker();
    XFile? pickedFile;
    pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      if (imageFile != null) {
        setState(() {});
        final fileName = DateTime.now().millisecondsSinceEpoch.toString();
        final reference = firebaseStorage.ref().child(fileName);
        final uploadTask = reference.putFile(imageFile!);
        try {
          final snapshot = await uploadTask;
          imageUrl = await snapshot.ref.getDownloadURL();
          setState(() {});

          //TODO image url va a ser lo que le tengo que pasar al usuario como picture
        } on FirebaseException catch (e) {
          setState(() {});
          await Fluttertoast.showToast(msg: e.message ?? e.toString());
        }
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: 60,
          width: kIsWeb ? 400 : size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(150),
          ),
        ),
        TextButton(
          onPressed: () async => getImage(),
          child: Row(
            children: const [Icon(Icons.image), Text('Elegir')],
          ),
        ),
      ],
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

import 'package:chat_app/screens/remind_me/screens/constant.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});
  static const id = '/registration';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Je crée mon compte",
              style: kTexStyleSignup,
            ),
            const SizedBox(height: 20),
            const TextFieldCustom(
              hintText: 'Email',
              prefixIcon: Icon(Icons.email),
              textType: TextInputType.emailAddress,
              isPassword: false,
            ),
            const SizedBox(height: 10),
            const TextFieldCustom(
              hintText: 'Mot de passe',
              prefixIcon: Icon(Icons.password),
              textType: TextInputType.visiblePassword,
              isPassword: true,
            ),
            const SizedBox(height: 10),
            const TextFieldCustom(
              hintText: 'Confirmez le mot de passe',
              prefixIcon: Icon(Icons.password),
              textType: TextInputType.visiblePassword,
              isPassword: true,
            ),
            const SizedBox(height: 30),
            const Text(
              'Continuez avec google',
              style: TextStyle(
                color: Color.fromRGBO(255, 130, 5, 100),
              ),
            ),
            const Text(
              'Déjà un compte ? Connecter vous ici',
              style: TextStyle(),
            ),
            const SizedBox(height: 30),
            ButtonCustom(
              onTap: () {},
              text: "S'enregistrer",
            )
          ],
        ),
      ),
    ));
  }
}

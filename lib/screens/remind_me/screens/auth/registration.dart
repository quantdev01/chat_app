import 'package:chat_app/screens/remind_me/screens/utils/constant.dart';
import 'package:chat_app/screens/remind_me/screens/auth/login.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});
  static const id = '/registration';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: kMyPaddingLayout,
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
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
                const SizedBox(height: 20),
                Text(
                  'Continuez avec google',
                  style: TextStyle(
                    color: kAccentColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Déjà un compte ?',
                      style: TextStyle(),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, Login.id),
                      child: Text(
                        ' Connecter vous ici',
                        style: TextStyle(
                          color: kAccentColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ButtonCustom(
                  onTap: () {
                    Navigator.pushNamed(context, Login.id);
                  },
                  text: "S'enregistrer",
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

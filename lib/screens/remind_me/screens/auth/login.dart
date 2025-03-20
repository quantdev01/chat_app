import 'package:chat_app/screens/remind_me/screens/utils/constant.dart';
import 'package:chat_app/screens/remind_me/screens/auth/registration.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const id = '/login';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Je me connecte",
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
                const SizedBox(height: 20),
                const Text(
                  'Continuez avec google',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 130, 5, 100),
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Pas encore de compte ?',
                      style: TextStyle(),
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, Registration.id),
                      child: Text(
                        ' Crée un compte',
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
                  onTap: () {},
                  text: "Se connecter",
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, Registration.id),
                  child: const Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

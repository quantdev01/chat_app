import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UserChecking extends StatelessWidget {
  const UserChecking({super.key});
  static const id = '/user_checking';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageIcon(imagePath: "images/logo.png"),
              const SizedBox(height: 20),
              ButtonCustom(
                onTap: () {},
                text: 'UTILISATEUR NORMALE',
              ),
              const SizedBox(height: 20),
              ButtonCustom(
                onTap: () {},
                text: 'UTILISATEUR SUPER',
              )
            ],
          ),
        )),
      ),
    );
  }
}

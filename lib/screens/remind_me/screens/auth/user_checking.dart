import 'package:chat_app/screens/remind_me/screens/normal_user/user_normal.dart';
import 'package:chat_app/screens/remind_me/screens/admin_user/user_admin.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UserChecking extends StatelessWidget {
  const UserChecking({super.key});
  static const id = '/user_checking';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                imageIcon(imagePath: "images/logo.png"),
                const SizedBox(height: 20),
                ButtonCustom(
                  onTap: () {
                    Navigator.pushNamed(context, UserNormal.id);
                  },
                  text: 'UTILISATEUR NORMALE',
                ),
                const SizedBox(height: 20),
                ButtonCustom(
                  onTap: () {
                    Navigator.pushNamed(context, UserAdmin.id);
                  },
                  text: 'UTILISATEUR SUPER',
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

import 'package:chat_app/screens/remind_me/screens/utils/constant.dart';
import 'package:chat_app/screens/remind_me/screens/normal_user/search_church.dart';
import 'package:chat_app/screens/remind_me/screens/auth/user_checking.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UserNormal extends StatefulWidget {
  const UserNormal({super.key});
  static const id = '/user_normal';

  @override
  State<UserNormal> createState() => _UserNormalState();
}

class _UserNormalState extends State<UserNormal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: kMyPaddingLayout,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Entrez votre nom',
                style: kTexStyleSignup,
              ),
              const SizedBox(height: 20),
              const PickupProfile(
                imagePath: 'images/logo.png',
              ),
              const SizedBox(height: 30),
              const TextFieldCustom(
                hintText: 'Entrez votre nom',
                prefixIcon: Icon(Icons.perm_identity_outlined),
                textType: TextInputType.name,
                isPassword: false,
              ),
              const SizedBox(height: 20),
              ButtonCustom(
                  onTap: () {
                    Navigator.pushNamed(context, SearchChurch.id);
                  },
                  text: 'Continuez'),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, UserChecking.id),
                child: const Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

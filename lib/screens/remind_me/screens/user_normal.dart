import 'package:chat_app/screens/remind_me/screens/constant.dart';
import 'package:chat_app/screens/remind_me/screens/search_church.dart';
import 'package:chat_app/screens/remind_me/screens/user_checking.dart';
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
              Stack(
                children: [
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset('images/logo.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 39,
                      height: 39,
                      decoration: BoxDecoration(
                        color: kAccentColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.photo_camera_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
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

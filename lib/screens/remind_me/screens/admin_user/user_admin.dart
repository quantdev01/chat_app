import 'package:chat_app/screens/remind_me/screens/add_church_name.dart';
import 'package:chat_app/screens/remind_me/screens/constant.dart';
import 'package:chat_app/screens/remind_me/screens/search_church.dart';
import 'package:chat_app/screens/remind_me/screens/user_checking.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UserAdmin extends StatefulWidget {
  const UserAdmin({super.key});
  static const id = '/user_admin';

  @override
  State<UserAdmin> createState() => _UserAdminState();
}

class _UserAdminState extends State<UserAdmin> {
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
                    Navigator.pushNamed(context, AddChurchName.id);
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

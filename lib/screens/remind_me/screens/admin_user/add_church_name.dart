import 'package:chat_app/screens/remind_me/screens/admin_user/add_church_event.dart';
import 'package:chat_app/screens/remind_me/screens/utils/constant.dart';
import 'package:chat_app/screens/remind_me/screens/auth/user_checking.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AddChurchName extends StatefulWidget {
  const AddChurchName({super.key});
  static const id = '/add_church_name';

  @override
  State<AddChurchName> createState() => _AddChurchNameState();
}

class _AddChurchNameState extends State<AddChurchName> {
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
                "Entrez le nom de l'Eglise",
                textAlign: TextAlign.center,
                style: kTexStyleSignup,
              ),
              const SizedBox(height: 20),
              const PickupProfile(
                imagePath: 'images/logo.png',
              ),
              const SizedBox(height: 30),
              const TextFieldCustom(
                hintText: "Nom de l'Eglise",
                prefixIcon: Icon(Icons.perm_identity_outlined),
                textType: TextInputType.name,
                isPassword: false,
              ),
              const SizedBox(height: 20),
              ButtonCustom(
                  onTap: () {
                    Navigator.pushNamed(context, AddChurchEvent.id);
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

import 'package:chat_app/screens/remind_me/screens/user_checking.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  static const id = '/on_boarding3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageIcon(imagePath: "images/logo.png"),
              const SizedBox(height: 20),
              const BodyOnboarding(
                imagePath: "images/logo.png",
                text: "Nous nous chargeons de vous le rappeler",
              ),
              const SizedBox(height: 20),
              ButtonCustom(
                onTap: () {
                  Navigator.pushNamed(context, UserChecking.id);
                },
                text: 'SUIVANT',
              )
            ],
          ),
        ),
      ),
    );
  }
}

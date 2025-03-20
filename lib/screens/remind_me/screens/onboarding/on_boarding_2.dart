import 'package:chat_app/screens/remind_me/screens/onboarding/on_boarding_3.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  static const id = '/on_boarding2';

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
                text: "Selectionnez le programme de votre choix",
              ),
              const SizedBox(height: 20),
              ButtonCustom(
                onTap: () {
                  Navigator.pushNamed(context, OnBoarding3.id);
                },
                text: 'SUIVANT',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

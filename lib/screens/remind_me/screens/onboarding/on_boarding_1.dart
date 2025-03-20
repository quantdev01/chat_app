import 'package:chat_app/screens/remind_me/screens/onboarding/on_boarding_2.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  static const id = '/ui_exercise';

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color.fromRGBO(255, 130, 5, 100),
        ),
      ),
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                imageIcon(imagePath: "images/logo.png"),
                const SizedBox(height: 20),
                const BodyOnboarding(
                  imagePath: "images/logo.png",
                  text: "Ne soyez plus en \nretard à l'Eglise",
                ),
                const SizedBox(height: 20),
                ButtonCustom(
                  onTap: () {
                    Navigator.pushNamed(context, OnBoarding2.id);
                  },
                  text: 'SUIVANT',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

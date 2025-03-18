import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  static const id = 'ui_exercise';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                const ButtonCustom()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

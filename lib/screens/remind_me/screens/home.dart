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
      home: Scaffold(
        body: Column(
          children: [
            Image.asset('images/clock.png'),
          ],
        ),
      ),
    );
  }
}

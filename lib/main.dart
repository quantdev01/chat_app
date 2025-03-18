import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/code_verification_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:chat_app/screens/registration_screen_with_phone_number.dart';
import 'package:chat_app/screens/remind_me/screens/on_boarding_1.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screens/welcome_screen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          //* color: Colors.black54, previous color
        ),
      ),
      initialRoute: Home.id,
      routes: {
        ChatScreen.id: (context) => const ChatScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreenWithPhoneNumber.id: (context) =>
            const RegistrationScreenWithPhoneNumber(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        CodeVerificationScreen.id: (context) => const CodeVerificationScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        Home.id: (context) => const Home(),
      },
    );
  }
}

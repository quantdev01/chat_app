import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/code_verification_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:chat_app/screens/registration_screen_with_phone_number.dart';
import 'package:chat_app/screens/remind_me/screens/confirm_email.dart';
import 'package:chat_app/screens/remind_me/screens/login.dart';
import 'package:chat_app/screens/remind_me/screens/on_boarding_1.dart';
import 'package:chat_app/screens/remind_me/screens/on_boarding_2.dart';
import 'package:chat_app/screens/remind_me/screens/on_boarding_3.dart';
import 'package:chat_app/screens/remind_me/screens/registration.dart';
import 'package:chat_app/screens/remind_me/screens/search_church.dart';
import 'package:chat_app/screens/remind_me/screens/user_admin.dart';
import 'package:chat_app/screens/remind_me/screens/user_checking.dart';
import 'package:chat_app/screens/remind_me/screens/user_normal.dart';
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
      theme: ThemeData.light().copyWith(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black),
          //* color: Colors.black54, previous color
        ),
      ),
      initialRoute: SearchChurch.id,
      routes: {
        ChatScreen.id: (context) => const ChatScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreenWithPhoneNumber.id: (context) =>
            const RegistrationScreenWithPhoneNumber(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        CodeVerificationScreen.id: (context) => const CodeVerificationScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        OnBoarding1.id: (context) => const OnBoarding1(),
        OnBoarding2.id: (context) => const OnBoarding2(),
        OnBoarding3.id: (context) => const OnBoarding3(),
        UserChecking.id: (context) => const UserChecking(),
        Registration.id: (context) => const Registration(),
        Login.id: (context) => const Login(),
        ConfirmEmail.id: (context) => const ConfirmEmail(),
        UserNormal.id: (context) => const UserNormal(),
        UserAdmin.id: (context) => const UserAdmin(),
        SearchChurch.id: (context) => const SearchChurch(),
      },
    );
  }
}

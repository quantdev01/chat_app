import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ConfirmEmail extends StatefulWidget {
  const ConfirmEmail({super.key});
  static const id = '/confirm_email';

  @override
  State<ConfirmEmail> createState() => _ConfirmEmailState();
}

class _ConfirmEmailState extends State<ConfirmEmail> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  TextFieldCustomConfirmEmail(controller: _controller),
                  TextFieldCustomConfirmEmail(controller: _controller),
                  TextFieldCustomConfirmEmail(controller: _controller),
                  TextFieldCustomConfirmEmail(controller: _controller),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

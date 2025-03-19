import 'package:chat_app/screens/remind_me/screens/constant.dart';
import 'package:chat_app/screens/remind_me/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ConfirmEmail extends StatefulWidget {
  const ConfirmEmail({super.key});
  static const id = '/confirm_email';

  @override
  State<ConfirmEmail> createState() => _ConfirmEmailState();
}

class _ConfirmEmailState extends State<ConfirmEmail> {
  final TextEditingController _controller0 = TextEditingController();
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();

  final FocusNode _focusScope0 = FocusNode();
  final FocusNode _focusScope1 = FocusNode();
  final FocusNode _focusScope2 = FocusNode();
  final FocusNode _focusScope3 = FocusNode();
  final FocusNode _focusScope4 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kMyPaddingLayout,
          child: Center(
            child: SingleChildScrollView(
              child: Column(children: [
                Text(
                  'Confirmez votre email',
                  style: kDisplayTextStyle,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textFieldConfirm(
                        controller: _controller0,
                        focusScopeCurrent: _focusScope0,
                        focusScopeNext: _focusScope1),
                    textFieldConfirm(
                        controller: _controller1,
                        focusScopeCurrent: _focusScope1,
                        focusScopeNext: _focusScope2),
                    textFieldConfirm(
                        controller: _controller2,
                        focusScopeCurrent: _focusScope2,
                        focusScopeNext: _focusScope3),
                    textFieldConfirm(
                        controller: _controller3,
                        focusScopeCurrent: _focusScope3,
                        focusScopeNext: _focusScope4),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Renvoyez le mail',
                  style: TextStyle(
                    color: kAccentColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 20),
                ButtonCustom(
                  onTap: () {},
                  text: 'Confirmez',
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:chat_app/screens/remind_me/screens/utils/constant.dart';
import 'package:flutter/material.dart';

class AddChurchEvent extends StatefulWidget {
  const AddChurchEvent({super.key});
  static const id = '/add_event';

  @override
  State<AddChurchEvent> createState() => _AddChurchEventState();
}

class _AddChurchEventState extends State<AddChurchEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                'Programme',
                style: kRegularText,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

import 'package:chat_app/screens/remind_me/screens/constant.dart';
import 'package:chat_app/screens/remind_me/screens/main_user_page.dart';
import 'package:flutter/material.dart';

class PickEvent extends StatefulWidget {
  const PickEvent({super.key});
  static const id = '/pick_event';

  @override
  State<PickEvent> createState() => _PickEventState();
}

class _PickEventState extends State<PickEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kMyPaddingLayout,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, MainUserPage.id),
                    child: const Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Text(
                'Lundi',
                style: kRegularText,
              ),
              const SizedBox(height: 10),
              const SizedBox(
                height: 63,
                width: double.infinity,
                child: Card(
                  color: kSoftAccentColor,
                  child: Center(child: Text('Prière matinale')),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "07:30 - ",
                    style: kBigClockNormal,
                  ),
                  Text(
                    "07:30",
                    style: kBigClockOrange,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text('Rappel-moi'),
                  ToggleButtons(
                      isSelected: const [true, false],
                      children: const [Text("I'm on"), Text("I'm off")]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

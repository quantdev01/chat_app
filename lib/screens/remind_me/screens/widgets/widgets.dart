import 'package:chat_app/screens/remind_me/screens/utils/constant.dart';
import 'package:flutter/material.dart';

Image imageIcon({required String imagePath}) {
  return Image.asset(
    imagePath,
    height: 161,
    width: 161,
  );
}

class ButtonCustom extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const ButtonCustom({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 77,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 8, 8, 8),
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignCenter,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: List.filled(
          10,
          const BoxShadow(
            color: Colors.black,
            offset: Offset(10, 0),
          ),
        ),
      ),
      child: TextButton(
        onPressed: onTap,
        style: const ButtonStyle(),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class ButtonCustomWithIcon extends StatelessWidget {
  final VoidCallback onTap;
  final Widget widget;

  const ButtonCustomWithIcon({
    super.key,
    required this.onTap,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 77,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 8, 8, 8),
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignCenter,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: List.filled(
          10,
          const BoxShadow(
            color: Colors.black,
            offset: Offset(10, 0),
          ),
        ),
      ),
      child: TextButton(
        onPressed: onTap,
        style: const ButtonStyle(),
        child: widget,
      ),
    );
  }
}

class BodyOnboarding extends StatelessWidget {
  final dynamic imagePath;
  final dynamic text;

  const BodyOnboarding({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 334,
      height: 334,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath)),
        // backgroundBlendMode: BlendMode.color,
      ),
      child: Center(
          child: Text(
        text,
        textAlign: TextAlign.center,
        style: kDisplayTextStyle,
      )),
    );
  }
}

// TextFIeld customized

class TextFieldCustom extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final TextInputType textType;
  final bool isPassword;
  const TextFieldCustom({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.textType,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: TextField(
            keyboardType: textType,
            obscureText: isPassword,
            style: const TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              prefixIcon: prefixIcon,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

Widget textFieldConfirm({
  required FocusNode focusScopeCurrent,
  required TextEditingController controller,
  required FocusNode focusScopeNext,
}) =>
    Container(
      height: 77,
      width: 77,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Builder(builder: (innerContext) {
            return Form(
              child: TextFormField(
                focusNode: focusScopeCurrent,
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(innerContext).requestFocus(focusScopeNext);
                  }
                },
                maxLength: 1,
                controller: controller,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: '0',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 32,
                  ),
                  border: InputBorder.none,
                ),
              ),
            );
          }),
        ),
      ),
    );

const TimePickerDialog timePickerDialog = TimePickerDialog(
  cancelText: 'Annuler',
  confirmText: 'OK',
  helpText: 'Temps',
  errorInvalidText: 'incorrect',
  hourLabelText: 'Heure',
  initialEntryMode: TimePickerEntryMode.dialOnly,
  initialTime: TimeOfDay(
    hour: 00,
    minute: 00,
  ),
);

//* user profile picture

class PickupProfile extends StatelessWidget {
  final String imagePath;
  const PickupProfile({
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(imagePath),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 39,
            height: 39,
            decoration: BoxDecoration(
              color: kAccentColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.photo_camera_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

Image imageIcon({required String imagePath}) {
  return Image.asset(
    imagePath,
    height: 161,
    width: 161,
  );
}

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 77,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
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
        onPressed: () {},
        style: const ButtonStyle(),
        child: const Text(
          "SUIVANT",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
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
        style: const TextStyle(
          fontSize: 29,
        ),
      )),
    );
  }
}

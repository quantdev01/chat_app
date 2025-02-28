import 'dart:developer';

import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

class CodeVerificationScreen extends StatefulWidget {
  const CodeVerificationScreen({
    super.key,
  });
  static const String id = 'code_verification_screen';

  @override
  State<CodeVerificationScreen> createState() => _CodeVerificationScreenState();
}

class _CodeVerificationScreenState extends State<CodeVerificationScreen> {
  TextEditingController verificationController1 = TextEditingController();
  TextEditingController verificationController2 = TextEditingController();
  TextEditingController verificationController3 = TextEditingController();
  TextEditingController verificationController4 = TextEditingController();

  final FocusNode _focusScope1 = FocusNode();
  final FocusNode _focusScope2 = FocusNode();
  final FocusNode _focusScope3 = FocusNode();
  final FocusNode _focusScope4 = FocusNode();

  @override
  void initState() {
    verificationController1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter the verification code',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Builder(
              builder: (BuildContext innerContext) => Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: 50,
                        child: TextFormField(
                          controller: verificationController1,
                          focusNode: _focusScope1,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.black),
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(innerContext)
                                  .requestFocus(_focusScope2);
                            }
                          },
                          maxLength: 1,
                          decoration: kVerificationField,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: 50,
                        child: TextFormField(
                          focusNode: _focusScope2,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.black),
                          onChanged: (value) {
                            //Do something with the user input.
                            if (value.length == 1) {
                              FocusScope.of(innerContext)
                                  .requestFocus(_focusScope3);
                            }
                          },
                          maxLength: 1,
                          decoration: kVerificationField,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: 50,
                        child: TextFormField(
                          controller: verificationController3,
                          focusNode: _focusScope3,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.black),
                          onChanged: (value) {
                            //Do something with the user input.
                            if (value.length == 1) {
                              FocusScope.of(innerContext)
                                  .requestFocus(_focusScope4);
                            }
                          },
                          maxLength: 1,
                          decoration: kVerificationField,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: 50,
                        child: TextFormField(
                          controller: verificationController4,
                          focusNode: _focusScope4,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.black),
                          onChanged: (value) {
                            //Do something with the user input.
                            if (value.length == 1) {
                              FocusScope.of(innerContext).requestFocus();
                            }
                          },
                          maxLength: 1,
                          decoration: kVerificationField,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    log('The pin is ${verificationController1.text}');
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    'Confirm',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

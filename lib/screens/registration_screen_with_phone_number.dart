import 'dart:convert';
import 'dart:developer';

import 'package:chat_app/constants.dart';
import 'package:chat_app/utils/country_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreenWithPhoneNumber extends StatefulWidget {
  const RegistrationScreenWithPhoneNumber({super.key});
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenWithPhoneNumberState createState() =>
      _RegistrationScreenWithPhoneNumberState();
}

class _RegistrationScreenWithPhoneNumberState
    extends State<RegistrationScreenWithPhoneNumber> {
  String _dropdownValue = '+243';
  late TextEditingController phoneController = TextEditingController();

  late Future<List<CountryModel>> futureCountries;
  List<CountryModel> _countries = [];
  String? _selectedCountryCode = '+1';

  void dropdownCallBack(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
  }

  Future<void> fetchCountries() async {
    final url = Uri.parse('https://country-code-au6g.vercel.app/Country.json');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(response.body);
        List<CountryModel> countryList =
            jsonData.map((json) => CountryModel.fromJson(json)).toList();

        setState(
          () {
            _countries = countryList;
            if (_countries.isNotEmpty) {
              _selectedCountryCode = _countries.first.dial_code;
            }
          },
        );
      } else {
        throw Exception('Failed to load country data');
      }
    } catch (e) {
      log('Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchCountries();
    phoneController;
  }

  @override
  Widget build(BuildContext context) {
    log(_dropdownValue);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            DropdownButton<String>(
              isExpanded: true,
              menuWidth: 300,
              iconEnabledColor: Colors.blueGrey,
              dropdownColor: Colors.white,
              value: _selectedCountryCode,
              onChanged: (String? newValue) {
                setState(
                  () {
                    _selectedCountryCode = newValue;
                  },
                );
              },
              items: _countries
                  .map<DropdownMenuItem<String>>((CountryModel country) {
                return DropdownMenuItem<String>(
                  value: country.dial_code,
                  child: Text(
                    '${country.name}(${country.dial_code})',
                    style: const TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
            ),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              style: const TextStyle(color: Colors.black),
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Phone number'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () async {
                    log("$_selectedCountryCode${phoneController.text}");
                    FirebaseAuth auth = FirebaseAuth.instance;
                    await auth.verifyPhoneNumber(
                      phoneNumber:
                          '$_selectedCountryCode ${phoneController.text}',
                      verificationCompleted:
                          (PhoneAuthCredential credential) async {
                        await auth.signInWithCredential(credential);
                      },
                      verificationFailed: (FirebaseAuthException e) {
                        if (e.code == 'invalid-phone-number') {
                          log('The provided phone number is not valid.');
                        } else {
                          throw e;
                        }
                      },
                      codeSent:
                          (String verificationId, int? resendToken) async {
                        // Update the UI - wait for the user to enter the SMS code

                        String smsCode = 'xxxx';

                        // Create a PhoneAuthCredential with the code
                        PhoneAuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: verificationId,
                                smsCode: smsCode);

                        // Sign the user in (or link) with the credential
                        await auth.signInWithCredential(credential);
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    'Get code',
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

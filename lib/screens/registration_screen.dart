import 'dart:convert';
import 'dart:developer';

import 'package:chat_app/constants.dart';
import 'package:chat_app/utils/country_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String _dropdownValue = '+243';

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

        setState(() {
          _countries = countryList;
          if (_countries.isNotEmpty) {
            _selectedCountryCode = _countries.first.dial_code;
          }
        });
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
  }

  @override
  Widget build(BuildContext context) {
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
            SizedBox(
              child: DropdownButton<String>(
                menuWidth: 300,
                iconEnabledColor: Colors.blueGrey,
                dropdownColor: Colors.white,
                value: _selectedCountryCode,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCountryCode = newValue;
                  });
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
            ),
            TextField(
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    //Implement registration functionality.
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    'Register',
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

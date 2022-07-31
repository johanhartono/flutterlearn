// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:belajarflutter/handlinguserinput/passretrievedvunavigator.dart';

String firstName = '';
String lastName = '';
final ThemeData themedata = ThemeData(
  brightness:  Brightness.light,
  primarySwatch: Colors.teal,
  // ignore: deprecated_member_use
  accentColor: Colors.yellowAccent,
);

class ApplyThemeData extends StatefulWidget {
  const ApplyThemeData({Key? key}) : super(key: key);

  @override
  State<ApplyThemeData> createState() => _ApplyThemeDataState();
}

class _ApplyThemeDataState extends State<ApplyThemeData> {
  final myController = TextEditingController();
  @override
  void initState() {
    super.initState();
    firstName = '';
    lastName = '';
    myController.addListener(_printValue);
  }

  @override
  void dispose() {
    myController.removeListener(_printValue);
    myController.dispose();
    super.dispose();
  }

  _printValue() {
    setState(() {
      lastName = myController.text;
    });
    // ignore: avoid_print
    print('Last text $lastName');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) =>
                    PasValue(firstName: firstName, lastName: lastName),
              )),
          child: Icon(Icons.text_fields),
        ),
        appBar: AppBar(title: const Text('Retrieve Text Input')),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300.0,
              height: 250.0,
              decoration: BoxDecoration(
                  border: Border.all(
                width: 1.0,
              )),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Write Something',
                      icon: Icon(Icons.text_fields),
                    ),
                    onChanged: (text) {
                      setState(() {
                        firstName = text;
                      });
                      // ignore: avoid_print
                      print('First text $text');
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Write Something',
                      icon: Icon(Icons.text_fields),
                    ),
                    controller: myController,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: unnecessary_string_interpolations
                Text('$firstName'),
                // ignore: unnecessary_string_interpolations
                Text('$lastName'),
              ],
            ),
            // ignore: unnecessary_string_interpolations
          ],
        )));
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

String statement = 'Before state Change';

class SetStateExample extends StatefulWidget {
  const SetStateExample({Key? key}) : super(key: key);

  @override
  State<SetStateExample> createState() => _SetStateExampleState();
}

class _SetStateExampleState extends State<SetStateExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('setState Demo'),
        ),
        body: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //SizedBox(height: 150,),
                Text(statement),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      _callStateChange();
                    },
                    child: const Text('Call setState'),
                  ),
                ),
              ],
            )
        )
        );
  }

  _callStateChange() {
    setState (() {
      statement = 'Congratulations, State Changed !';
    });
  }
}

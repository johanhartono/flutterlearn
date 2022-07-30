// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AlertDialogWithButtons extends StatelessWidget {
  const AlertDialogWithButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _showDialog() {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog (
              title: Text('Alert Dialog Title'),
              content: Text('Alert Dialog body'),
              actions: <Widget> [
                FlatButton(
                  child: Text('Close'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },)
              ]
            );
          }
        );
      }

    return Scaffold(
      
      appBar: AppBar(
        title: Text('AlertDialog Demo'),
      ),
      body: Center(
        child: InkWell(
          onTap: () => _showDialog(),
          // ignore: duplicate_ignore
          child: Container(
            padding: EdgeInsets.all(12.0),
            child: Text(
            'Alert Dialog',
            style: TextStyle(fontSize: 25.0)
            )
          )
          
          )
      )
    );
  }
}
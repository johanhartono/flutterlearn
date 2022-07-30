//Future<T>
// async and await
// Future API
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

// ignore: use_key_in_widget_constructors
class FutureFunction extends StatelessWidget {
  Future<dynamic> fetchData() {
    Future<http.Response> response =
        http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/7'));
    return response.then((response) {
      // ignore: avoid_print
      print('Responses status : ${response.statusCode}');
      if (response.statusCode == 404) {
        return 'Error';
      } else {
        return response.body;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    onClickFunc() {
      Future<dynamic> success = Future(fetchData);
      success.then((data) {
        if (data != 'Error') {
          // ignore: avoid_print
          print('Recieved from fetchdata $data');
        } else {
          // ignore: avoid_print
          print('Recived fron fetchdata: $data');
        }
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
          child: FlatButton(
        child: const Text('Click to call Future',
            style: TextStyle(fontSize: 25.0)),
        onPressed: () {
          onClickFunc();
        },
      )),
    );
  }
}

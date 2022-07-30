//Future<T>
// async and await
// Future API
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore: use_key_in_widget_constructors
class AsyncAwait extends StatelessWidget {

  fetchData() async {
    http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/11'));
    // ignore: avoid_print
    print('Response status: ${response.statusCode}');
    if (response.statusCode == 404) {
      return 'Error';
    } else {
      return response.body;
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    onClickFunc() async {
      dynamic data = await fetchData();
      // ignore: avoid_print
      print('Inside clickFunction');
      if (data != 'Error') {
        // ignore: avoid_print
        print('Recieved from fetchdata $data');
      } else {
        // ignore: avoid_print
        print('Recived fron fetchdata: $data');
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
          child: FlatButton(
        child: const Text('Click to call Future',
            style: TextStyle(fontSize: 25.0)),
        onPressed: () async {
          // ignore: await_only_futures, avoid_print
          print('before ClickFunction');
          await onClickFunc();
          // ignore: avoid_print
          print('after ClickFunction');
        },
      )),
    );
  }
}

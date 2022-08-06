import 'package:flutter/material.dart';

class DefaultUI extends StatelessWidget {
  const DefaultUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        // ignore: avoid_print
        print('Increment');
      },
      child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Fluttter Demo Home Page'),
      ),
      body: const Center(
        child: Text('You have pushed the button this many times: 0'),)
    );
  }
}

// Stack Widget Example

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(onPressed: () {
        // ignore: avoid_print
        print('Floating Action');
      },
      // ignore: sort_child_properties_last
      child: const Icon(Icons.add),
      backgroundColor: Colors.black,
      
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Hello Flutter'),
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // ignore: avoid_print
              print('Settings');
            }),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // ignore: avoid_print
                print('menu');
              }),
          IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // ignore: avoid_print
                print('menu');
              })
        ],
      ),
      body: Column(
        children: const [
          Center(
          child: Text('Hello World!',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          )),
        ),
          Center(
          child: Text.rich( TextSpan(
            children: <TextSpan> [
              TextSpan( text:'Hello', style: TextStyle(fontStyle: FontStyle.italic)),
              TextSpan( text: 'World!'),
            ]
          ),
        ))
      ],)
    );
  }
}

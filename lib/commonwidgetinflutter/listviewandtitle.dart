import 'package:flutter/material.dart';

class ListViewTitle extends StatelessWidget {
  const ListViewTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: prefer_const_literals_to_create_immutables
        body: ListView(
            children: [
              ListTile(
              leading: const Icon(Icons.map),
              title: const Text('Map'),
              onTap: () {
              // ignore: avoid_print
              print('Map');
            },
          ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Search'),
              onTap: () {
              // ignore: avoid_print
              print('Map');
            },
          )
            ]
          ),
                   );
  }
}

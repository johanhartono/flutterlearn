import 'package:flutter/material.dart';

List<String> content = ['eins', 'zwei', 'drei'];


class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: content.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(content[index]),
              );
            }));
  }
}

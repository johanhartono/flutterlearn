import 'package:flutter/material.dart';

class ContainerRoles extends StatelessWidget {
  const ContainerRoles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //width: 300.0,height: 250.0,
          constraints: const BoxConstraints.expand(width: 300.0),
          decoration:  BoxDecoration(
            color: Colors.lightBlue,
            border: Border.all(
              width: 2.0
          )),
          // ignore: sort_child_properties_last
          child:  const Text('Hello Flutter',
          style: TextStyle(
            fontSize: 25.0,fontWeight: FontWeight.bold
          )),
          alignment: const Alignment(0.0,0.0),
        ),
      )
    );
  }
}
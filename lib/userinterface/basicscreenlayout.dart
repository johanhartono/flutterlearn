import 'package:flutter/material.dart';

class BasicUI extends StatelessWidget {
  const BasicUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.all(6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            width: 500.0,
            height: 300.0,
            child: Image.asset(
              'assets/hiking.png',
              fit: BoxFit.cover,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 20.0)),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      'Cheese Burger',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                  ),
                  IconButton(
                    iconSize: 60.0,
                    onPressed: () {
                      // ignore: avoid_print
                      print('Liked');
                    },
                    icon: const Icon(Icons.favorite_border, color: Colors.red),
                  ),
                ]),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  //Row(
                    //children: [
                  IconButton(
                    iconSize: 30.0,
                    onPressed: () {
                      // ignore: avoid_print
                      print('call');
                    },
                    icon: const Icon(Icons.call, color: Colors.red),
                  ),
                  IconButton(
                    iconSize: 30.0,
                    onPressed: () {
                      // ignore: avoid_print
                      print('direction');
                    },
                    icon: const Icon(Icons.directions, color: Colors.red),
                  ),
                  IconButton(
                    iconSize: 30.0,
                    onPressed: () {
                      // ignore: avoid_print
                      print('share');
                    },
                    icon: const Icon(Icons.share, color: Colors.red),
                  ),
                //],
                //)
              ]),
          ),
          const Padding(padding: EdgeInsets.only(top: 20.0)),
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Expanded(child: Text('This is an abstract class that serves as a base class for actions that activate a control. By default, is bound to LogicalKeyboardKey.enter, LogicalKeyboardKey.gameButtonA, and LogicalKeyboardKey.space in the default keyboard map in WidgetsApp.',
            softWrap: true,
            style: TextStyle(fontSize: 15),)),
          )
        ],
      ),
    ));
  }
}

// ignore_for_file: dead_code

/* Chapter Other Usefull Widget */
/* Grid View */
import 'package:flutter/material.dart';

class GridViewWExample extends StatelessWidget {
  const GridViewWExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text('Grid View'),
      ),
      body: GridView.count(
        //scrollDirection: Axis.horizontal,
        crossAxisCount: 5,
        children: List.generate(100, (index) {
            return Center(
              // ignore: sized_box_for_whitespace
              child: Container(
                width:80,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  border: Border.all (
                    width: 1.0,
                  )
                ),
                // ignore: sort_child_properties_last
                child: Text(
                  'Item $index',
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 20.0),              
                ),
                alignment: const Alignment(0.0,0.0),
              ),
            );
          })
        )
    );
  }
}
import 'package:flutter/material.dart';

class CustomFonts extends StatelessWidget {
  const CustomFonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(30.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Batman',
            style: TextStyle(
              fontFamily: 'Bangers',
              fontSize: 25.0,
            ),
            ),
             Text('Superman',
            style: TextStyle(
              fontSize: 25.0,
            ),
            ),  
            Text('Wonder Woman',
            style: TextStyle(
              fontSize: 25.0,
            ),
            ),         
          ],)
      )
    );
  }
}
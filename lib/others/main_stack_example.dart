
// Stack Widget Example

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BelajarStackWidget(),
  ));
}

class BelajarStackWidget extends StatefulWidget {
  const BelajarStackWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BelajarStackWidgetState createState() => _BelajarStackWidgetState();
}

class _BelajarStackWidgetState extends State<BelajarStackWidget> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/10/04/18/13/mountains-5627143_1280.jpg'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              right: 40.0,
              top: 100.0,
              // ignore: prefer_interpolation_to_compose_strings
              child: Text(
                // ignore: prefer_interpolation_to_compose_strings
                date.hour.toString() + ':' + date.minute.toString() +  ':' + date.second.toString() +  ':' + date.millisecond.toString(),
                style: const TextStyle(
                  color: Colors.white, fontSize: 45.0
                  )
                  ),
            ),
             const Positioned(
              right: 40.0,
              top: 150.0,
              child: Text("BelajarFlutter.com",
                  style: TextStyle(color: Colors.lightBlueAccent, fontSize: 16.0)),
            ),
            
            Positioned(
              bottom: 48.0,
              left: 10.0,
              right: 10.0,
              child: Card(
                //color: Colors.blueGrey,
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  
                ),
                child: Column(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Kata Mutiara",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 0, left: 16.0, right: 16.0, bottom: 8.0),
                      child: Text(
                          "Pendidikan adalah senjata paling ampuh yang bisa kamu gunakan untuk mengubah dunia."),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(
                      top: 8.0, left: 16.0, right: 16.0, bottom: 32.0),
                      child: Text("Nelson Mandela"),
                    ), 
                  ],
                ),
              ),
            ), 
          ],
        ),
      ),
    );
  }
}
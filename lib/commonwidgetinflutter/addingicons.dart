import 'package:flutter/material.dart';

class AddingIcons extends StatelessWidget {
  const AddingIcons({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var assetsImage = const AssetImage('assets/hiking.png');
    //var image = Image(image: assetsImage,fit: BoxFit.cover);
    return Scaffold(
      body: Center(
        child: Container(
          width: 300.0,height: 250.0,
          //constraints: const BoxConstraints.expand(width: 300.0),
          decoration:  BoxDecoration(
            color: Colors.lightBlue,
            border: Border.all(
              width: 2.0
          )
          ),
          child: IconButton(
            // ignore: avoid_print
            onPressed: () {print('Tapped');},
            icon: const Icon(
                    Icons.mail_outline,size: 80.0),
          ),
        ))
        ,
      
    );
  }
}
import 'package:flutter/material.dart';

class ColumRow extends StatelessWidget {
  const ColumRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: 
      Row(children: [
        // ignore: prefer_const_constructors
        Icon(
          Icons.email,size:80.0,
         ),
        Text('Email'),    
         Icon(
          Icons.search,size:80.0,
   
        ),  
                Text('Email'),         
      ],
      
      ),

    );
  }
}
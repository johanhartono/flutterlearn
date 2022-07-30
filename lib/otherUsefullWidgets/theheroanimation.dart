import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HeroAnimationExample extends StatelessWidget {
  const HeroAnimationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    timeDilation = 2.0;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hero App'),
        ),
        body: Center(
          child: PhotoMetro(
              photo: 'assets/avatar.png',
              width: 100.0,
              onTap: () {
                // ignore: prefer_void_to_null
                Navigator.of(context).push(MaterialPageRoute<Null>(
                    builder: (BuildContext context) => const FirstScreen()));
              }),
        ));
  }
}

class PhotoMetro extends StatelessWidget {
  const PhotoMetro({Key? key, required this.photo,required this.onTap,required this.width}) : super(key: key);
  
  final String photo;
  final VoidCallback onTap;
  final double width;
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ))
        )
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flippers Page'),
        ),
        body: Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.topLeft,
            child: PhotoMetro(
                photo: 'assets/avatar.png',
                width: 60.0,
                onTap: () {
                  Navigator.of(context).pop();
                })));
  }
}

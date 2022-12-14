// Stack Widget Example

// ignore_for_file: prefer_const_constructors

//import 'package:belajarflutter/otherUsefullWidgets/alertdialogwithbuttons.dart';
import 'package:flutter/material.dart';
//import 'otherUsefullWidgets/gridviewexample.dart';
//import 'otherUsefullWidgets/theheroanimation.dart';
//import 'otherUsefullWidgets/alertdialogwithbuttons.dart';
//import 'otherUsefullWidgets/stackexample.dart';
//import 'usingthirdpartypackages/theurl_launcherpackages.dart';
//import 'workingwithremotedata/thehttppackage.dart';
//mport 'asynchronousfunctions/asyncandawait.dart';
//import 'handlinguserinput/handlingchangestextfield.dart';
//import 'introducingwidget/main_flutterlearn1.dart';
//import 'userinterface/applyingcustomfonts.dart';
//import 'introducingwidget/recreatedefaultui.dart';
//import 'commonwidgetinflutter/containerandtheirroles.dart';
import 'userinterface/basicscreenlayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // routes: <String, WidgetBuilder>{
        //   '/second': (BuildContext context) => SecondScreen(),
        // },
        debugShowCheckedModeBanner: false,
        /*theme: themedata,*/
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BasicUI());
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: use_key_in_widget_constructors
class UrlLauncher extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => UrlLauncherState();
}

class UrlLauncherState extends State<UrlLauncher> {
  @override
  void initState() {
    super.initState();
  }

  // ignore: unused_element
  _launchURL() async {
    const url = 'https:/www.flutter.io';
      if (await canLaunch(url)) {
        await launch(url);
    } else {
      throw 'could not Launch $url';
    }
  }
  _launchSMS() async {
    const url = 'sms:081808168037';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not Launch $url';
    }
  }
    _launchTelephone() async {
    const url = 'tel:+6281808168037';
      if (await canLaunch(url)) {
        await launch(url);
    } else {
      throw 'could not Launch $url';
    }
  }
  _launchEmail() async {
    const url = 'mailto:johanhartono@gmail.com';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not Launch $url';
    }
  }
@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('FlutterLearn url_launcher')),
        elevation: 0.7,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RaisedButton(
            child: const Text('Browser'),
            onPressed: () {
              _launchURL();
            },
          ),
          RaisedButton(
            child: const Text('Telephone'),
            onPressed: () {
              _launchTelephone();
            },
          ),
          RaisedButton(
            child: const Text('SMS'),
            onPressed: () {
              _launchSMS();
            },
          ),
          RaisedButton(
            child: const Text('Email'),
            onPressed: () {
              _launchEmail();
            },
          ),
        ],
      )));
}
}



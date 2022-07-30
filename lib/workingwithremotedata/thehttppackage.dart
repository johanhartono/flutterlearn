import 'package:belajarflutter/workingwithremotedata/services/news_provider.dart';
import 'package:flutter/material.dart';

import 'models/new_item_class.dart';

class HttpPackage extends StatefulWidget {
  const HttpPackage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HttpPackageState();
}

class HttpPackageState extends State<HttpPackage> {
  @override
  // ignore: deprecated_member_use, override_on_non_overriding_member, prefer_collection_literals
  var stories = <NewsItem>[];

  // ignore: annotate_overrides
  void initState() {
    super.initState();
    getNewsList();
  }

  getNewsList() async {
/*     await getHotNewsIds();
    await getNewsItem(18177995); */
     final newsList = await getHotNewsIds()
        .then((ids) => ids?.take(15).map((id) async => await getNewsItem(id)));
    // ignore: avoid_print
    print(newsList);
    // ignore: unused_local_variable
     //final List<Future<NewsItem>> newsitems = await Future.wait(newsList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FlutterLearn HackerNews'),
          elevation: 0.7,
        ),
        body: const Center(
          child: Text('My News Here'),
        ));
  }
}

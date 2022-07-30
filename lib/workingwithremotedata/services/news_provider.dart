// ignore: unused_import
import 'dart:async';
import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:belajarflutter/workingwithremotedata/models/new_item_class.dart';

Future<List<int>?> getHotNewsIds() async {
  var url = 'https://hacker-news.firebaseio.com/v0/topstories.json';

  final response = await http.get(Uri.parse(url));
  final statusCode = response.statusCode;

  if (statusCode < 200 || statusCode >= 300 || response.body == null) {
    // ignore: avoid_print
    print('Error $statusCode');
    return null;
  }

  // ignore: avoid_print
  print(response.body);
  final List storiesList = json.decode(response.body);
  return storiesList.cast<int>();
}

getNewsItem(int id) async {
  var url = 'https://hacker-news.firebaseio.com/v0/item/$id.json';

  final response = await http.get(Uri.parse(url));
  final statusCode = response.statusCode;

  if (statusCode < 200 || statusCode >= 300 || response.body == null) {
    // ignore: avoid_print
    print('Error $statusCode');
    return null;
  }

  // ignore: avoid_print
  final Map data = json.decode(response.body) as Map<String, dynamic>;
  // ignore: avoid_print
  print(data);
  //final NewsItem item = NewsItem.fromJson(data);
  //return item;
  // ignore: dead_code, avoid_print
  print(response.body);
}

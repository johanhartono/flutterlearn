class NewsItem {
  late final String author;
  late final String url;
  late final String title;
  late final String body;
  late final int score;

  NewsItem(
      { required this.author,
      required this.url,
      required this.title,
      required this.body,
      required this.score});

  factory NewsItem.fromJson(Map<String, dynamic> json) {
    return NewsItem(
      author: json['by'],
      url: json['url'],
      title: json['title'],
      body: json['body'],
      score: json['score'],
    );
  }
}

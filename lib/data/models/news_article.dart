class NewsArticle {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String source;
  final String timestamp;
  final String category;
  final String? audioUrl;

  const NewsArticle({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.source,
    required this.timestamp,
    required this.category,
    this.audioUrl,
  });
}

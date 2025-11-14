class NewsSource {
  final String id;
  final String name;
  final String logoUrl;
  final String statusText;
  final bool isActive;

  const NewsSource({
    required this.id,
    required this.name,
    required this.logoUrl,
    required this.statusText,
    required this.isActive,
  });
}

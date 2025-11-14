import 'package:flutter/material.dart';

import 'package:birifin_app/data/models/news_article.dart';

class QuickListenScroller extends StatelessWidget {
  const QuickListenScroller({super.key, required this.articles});

  final List<NewsArticle> articles;

  @override
  Widget build(BuildContext context) {
    if (articles.isEmpty) {
      return const SizedBox.shrink();
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(right: 24),
      child: Row(
        children: [
          for (var i = 0; i < articles.length; i++)
            Padding(
              padding: EdgeInsets.only(left: i == 0 ? 0 : 16),
              child: _QuickListenCard(article: articles[i]),
            ),
        ],
      ),
    );
  }
}

class _QuickListenCard extends StatelessWidget {
  const _QuickListenCard({required this.article});

  final NewsArticle article;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Container(
      width: 190,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            theme.colorScheme.secondary.withOpacity(0.85),
            theme.colorScheme.secondary.withOpacity(0.35),
          ],
        ),
        image: DecorationImage(
          image: NetworkImage(article.imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.45),
            BlendMode.darken,
          ),
          onError: (_, __) {},
        ),
        boxShadow: isDark
            ? [
                BoxShadow(
                  color: const Color(0xFFD90429).withOpacity(0.08),
                  blurRadius: 16,
                  offset: const Offset(0, 8),
                ),
              ]
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: theme.colorScheme.primary.withOpacity(0.9),
            ),
            child: Text(
              article.category,
              style: theme.textTheme.labelSmall?.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            article.title,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(Icons.podcasts, color: Colors.white, size: 16),
              const SizedBox(width: 4),
              Text(
                article.timestamp,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

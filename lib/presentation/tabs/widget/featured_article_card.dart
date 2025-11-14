import 'package:flutter/material.dart';

import 'package:birifin_app/data/models/news_article.dart';

class FeaturedArticleCard extends StatelessWidget {
  const FeaturedArticleCard({super.key, required this.article, this.onTap});

  final NewsArticle article;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          image: DecorationImage(
            image: NetworkImage(article.imageUrl),
            fit: BoxFit.cover,
            onError: (_, __) {},
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.35),
              BlendMode.darken,
            ),
          ),
          boxShadow: [
            if (isDark)
              BoxShadow(
                color: const Color(0xFFD90429).withOpacity(0.32),
                blurRadius: 28,
                offset: const Offset(0, 14),
              ),
            BoxShadow(
              color: Colors.black.withOpacity(0.18),
              blurRadius: 18,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        padding: const EdgeInsets.all(24),
        height: 220,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: theme.colorScheme.primary.withOpacity(0.9),
              ),
              child: Text(article.category, style: theme.textTheme.labelLarge),
            ),
            const SizedBox(height: 12),
            Text(
              article.title,
              style: theme.textTheme.displaySmall?.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '${article.source} · ${article.timestamp}',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

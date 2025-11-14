import 'package:flutter/material.dart';

import 'package:birifin_app/core/constants/app_constants.dart';
import 'package:birifin_app/data/mock/mock_articles.dart';
import 'package:birifin_app/presentation/tabs/widget/article_list_tile.dart';
import 'package:birifin_app/presentation/tabs/widget/featured_article_card.dart';
import 'package:birifin_app/presentation/tabs/widget/home_header.dart';
import 'package:birifin_app/presentation/tabs/widget/quick_listen_scroller.dart';
import 'package:birifin_app/presentation/tabs/widget/tech_article_chip.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final featured = mockFeaturedArticle;
    final quickListenArticles = mockArticles.take(6).toList();

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 120),
        children: [
          const HomeHeader(),
          const SizedBox(height: 32),
          Text('Günün Özeti', style: theme.textTheme.headlineMedium),
          const SizedBox(height: 16),
          FeaturedArticleCard(
            article: featured,
            onTap: () =>
                Navigator.of(context).pushNamed(AppConstants.summaryRoute),
          ),
          const SizedBox(height: 32),
          Text('Hızlı Dinle', style: theme.textTheme.titleLarge),
          const SizedBox(height: 12),
          QuickListenScroller(articles: quickListenArticles),
          const SizedBox(height: 28),
          Text(
            'Trendler',
            key: const ValueKey('trend-section-title'),
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          ...mockTrendingArticles.map(
            (article) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ArticleListTile(article: article),
            ),
          ),
          const SizedBox(height: 12),
          Text('Teknoloji Dosyaları', style: theme.textTheme.titleLarge),
          const SizedBox(height: 12),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: mockTechArticles
                .map((article) => TechArticleChip(article: article))
                .toList(),
          ),
        ],
      ),
    );
  }
}

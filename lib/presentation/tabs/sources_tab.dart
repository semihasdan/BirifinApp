import 'package:flutter/material.dart';

import 'package:birifin_app/data/mock/mock_sources.dart';
import 'package:birifin_app/data/models/news_source.dart';

class SourcesTab extends StatelessWidget {
  const SourcesTab({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(24, 32, 24, 120),
        itemBuilder: (context, index) {
          if (index == 0) {
            return _SourcesHeader(theme: theme);
          }
          final source = mockSources[index - 1];
          return _SourceCard(source: source);
        },
        separatorBuilder: (context, index) => const SizedBox(height: 18),
        itemCount: mockSources.length + 1,
      ),
    );
  }
}

class _SourcesHeader extends StatelessWidget {
  const _SourcesHeader({required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset('assets/transparent/BirifinDocT.png', height: 44),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                'Takip ettiğin kaynaklar',
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          'Birifin en güncel sesli özetleri bu liste üzerinden takip eder.',
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }
}

class _SourceCard extends StatelessWidget {
  const _SourceCard({required this.source});

  final NewsSource source;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: theme.colorScheme.secondary.withOpacity(0.1),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(source.logoUrl),
            onBackgroundImageError: (_, __) {},
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  source.name,
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  source.statusText,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: source.isActive
                  ? theme.colorScheme.primary.withOpacity(0.12)
                  : theme.colorScheme.secondary.withOpacity(0.08),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              source.isActive ? 'Canlı' : 'Pasif',
              style: theme.textTheme.labelMedium?.copyWith(
                color: source.isActive
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onSurface.withOpacity(0.6),
              ),
            ),
          )
        ],
      ),
    );
  }
}

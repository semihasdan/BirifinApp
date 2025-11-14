import 'package:birifin_app/data/models/news_article.dart';

final List<NewsArticle> mockArticles = [
  NewsArticle(
    id: '1',
    title: 'Tech Giants Unveil Next-Gen AI',
    description: 'The latest advancements promise to revolutionize user interactions across all devices.',
    imageUrl: 'https://images.unsplash.com/photo-1677442136019-21780ecad995?w=400',
    source: 'TechCrunch',
    timestamp: '2 saat önce',
    category: 'AI',
  ),
  NewsArticle(
    id: '2',
    title: 'Economic Outlook for Q4 2024',
    description: 'Analysts predict a slow but steady recovery amid global inflation concerns.',
    imageUrl: 'https://images.unsplash.com/photo-1611974789855-9c2a0a7236a3?w=400',
    source: 'Bloomberg',
    timestamp: '5 saat önce',
    category: 'Economy',
  ),
  NewsArticle(
    id: '3',
    title: 'Global markets react to the new central bank interest rate policies',
    description: 'Financial experts analyze the impact of recent policy changes on global markets.',
    imageUrl: 'https://images.unsplash.com/photo-1611974789855-9c2a0a7236a3?w=600',
    source: 'BBC',
    timestamp: '15 dk önce',
    category: 'Finance',
  ),
  NewsArticle(
    id: '4',
    title: 'Political Climate Heats Up',
    description: 'Recent developments in the political landscape signal significant changes ahead.',
    imageUrl: 'https://images.unsplash.com/photo-1529107386315-e1a2ed48a620?w=400',
    source: 'CNN',
    timestamp: '1 saat önce',
    category: 'Politics',
  ),
  NewsArticle(
    id: '5',
    title: 'International Relations Update',
    description: 'Key diplomatic meetings result in new cooperation agreements.',
    imageUrl: 'https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=400',
    source: 'Reuters',
    timestamp: '3 saat önce',
    category: 'World',
  ),
  NewsArticle(
    id: '6',
    title: 'Cybersecurity Threats Rise',
    description: 'Experts warn of increased digital threats targeting businesses worldwide.',
    imageUrl: 'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=400',
    source: 'Wired',
    timestamp: '4 saat önce',
    category: 'Technology',
  ),
  NewsArticle(
    id: '7',
    title: 'The Future of Retro Gaming',
    description: 'Classic games find new life with modern remasters and emulation.',
    imageUrl: 'https://images.unsplash.com/photo-1550745165-9bc0b252726f?w=400',
    source: 'IGN',
    timestamp: '6 saat önce',
    category: 'Gaming',
  ),
  NewsArticle(
    id: '8',
    title: 'VR Becomes More Immersive',
    description: 'Latest virtual reality headsets offer unprecedented realism.',
    imageUrl: 'https://images.unsplash.com/photo-1592478411213-6153e4ebc07d?w=400',
    source: 'The Verge',
    timestamp: '7 saat önce',
    category: 'Technology',
  ),
];

final List<NewsArticle> mockTrendingArticles = [
  mockArticles[3],
  mockArticles[4],
  mockArticles[5],
];

final List<NewsArticle> mockTechArticles = [
  mockArticles[5],
  mockArticles[6],
  mockArticles[7],
];

final NewsArticle mockFeaturedArticle = NewsArticle(
  id: 'featured-1',
  title: 'Quantum Computing\'s Next Leap',
  description: 'A breakthrough could redefine data processing power as we know it.',
  imageUrl: 'https://images.unsplash.com/photo-1635070041078-e363dbe005cb?w=600',
  source: 'Science Daily',
  timestamp: 'Yeni',
  category: 'Science',
);

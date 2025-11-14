import 'package:flutter/material.dart';

import 'package:birifin_app/core/constants/app_constants.dart';
import 'package:birifin_app/presentation/tabs/home_tab.dart';
import 'package:birifin_app/presentation/tabs/pro_tab.dart';
import 'package:birifin_app/presentation/tabs/sources_tab.dart';

class BirifinHomeShell extends StatefulWidget {
  const BirifinHomeShell({super.key});

  @override
  State<BirifinHomeShell> createState() => _BirifinHomeShellState();
}

class _BirifinHomeShellState extends State<BirifinHomeShell> with SingleTickerProviderStateMixin {
  final PageController _pageController =
      PageController(initialPage: AppConstants.homeTabIndex);
  int _currentIndex = AppConstants.homeTabIndex;
  
  AnimationController? _animationController;
  Animation<double>? _animation;

  final List<Widget> _pages = const [
    SourcesTab(),
    HomeTab(),
    ProTab(),
  ];

  final List<_NavItem> _navItems = const [
    _NavItem(
      assetPath: 'assets/transparent/BirifinDocT.png',
      selectedAssetPath: 'assets/transparent/BirifinDocSelectedT.png',
    ),
    _NavItem(
      assetPath: 'assets/transparent/BirifinHomeT.png',
      selectedAssetPath: 'assets/transparent/BirifinHomeSelectedT.png',
    ),
    _NavItem(
      assetPath: 'assets/transparent/BirifinProT.png',
      selectedAssetPath: 'assets/transparent/BirifinProSelectedT.png',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _animationController!,
      curve: Curves.easeInOut,
    );
  }

  void _onBottomNavTap(int index) {
    if (_currentIndex == index) return;
    
    setState(() {
      _currentIndex = index;
    });
    
    _animationController?.forward(from: 0.0);
    _pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorScheme.surface,
              colorScheme.background,
            ],
          ),
        ),
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: _pages,
        ),
      ),
      bottomNavigationBar: _animation != null
          ? _CurvedBottomNavBar(
              currentIndex: _currentIndex,
              navItems: _navItems,
              onTap: _onBottomNavTap,
              animation: _animation!,
              backgroundColor: colorScheme.secondary,
              buttonColor: colorScheme.primary,
            )
          : const SizedBox.shrink(),
    );
  }
}

class _NavItem {
  const _NavItem({
    required this.assetPath,
    required this.selectedAssetPath,
  });

  final String assetPath;
  final String selectedAssetPath;
}

class _CurvedBottomNavBar extends StatelessWidget {
  const _CurvedBottomNavBar({
    required this.currentIndex,
    required this.navItems,
    required this.onTap,
    required this.animation,
    required this.backgroundColor,
    required this.buttonColor,
  });

  final int currentIndex;
  final List<_NavItem> navItems;
  final Function(int) onTap;
  final Animation<double> animation;
  final Color backgroundColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          CustomPaint(
            painter: _CurvedNavBarPainter(
              backgroundColor: backgroundColor.withOpacity(0.95),
              currentIndex: currentIndex,
            ),
            child: SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _NavButton(
                      assetPath: currentIndex == 0 ? navItems[0].selectedAssetPath : navItems[0].assetPath,
                      isSelected: currentIndex == 0,
                      onTap: () => onTap(0),
                      animation: animation,
                    ),
                    const SizedBox(width: 80),
                    _NavButton(
                      assetPath: currentIndex == 2 ? navItems[2].selectedAssetPath : navItems[2].assetPath,
                      isSelected: currentIndex == 2,
                      onTap: () => onTap(2),
                      animation: animation,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            child: AnimatedScale(
              scale: currentIndex == 1 ? 1.1 : 1.0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: GestureDetector(
                onTap: () => onTap(1),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: buttonColor.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      currentIndex == 1 ? navItems[1].selectedAssetPath : navItems[1].assetPath,
                      height: 38,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  const _NavButton({
    required this.assetPath,
    required this.isSelected,
    required this.onTap,
    required this.animation,
  });

  final String assetPath;
  final bool isSelected;
  final VoidCallback onTap;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.scale(
          scale: isSelected ? 1.0 + (animation.value * 0.1) : 1.0,
          child: child,
        );
      },
      child: IconButton(
        onPressed: onTap,
        icon: Image.asset(
          assetPath,
          height: 38,
          fit: BoxFit.contain,
        ),
        padding: EdgeInsets.zero,
      ),
    );
  }
}

class _CurvedNavBarPainter extends CustomPainter {
  _CurvedNavBarPainter({
    required this.backgroundColor,
    required this.currentIndex,
  });

  final Color backgroundColor;
  final int currentIndex;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    final path = Path();
    
    const notchRadius = 35.0;
    final notchCenter = size.width / 2;

    // Start from top-left
    path.moveTo(0, 0);
    
    // Line to left side of notch
    path.lineTo(notchCenter - notchRadius - 20, 0);
    
    // Left curve leading to notch
    path.quadraticBezierTo(
      notchCenter - notchRadius - 10,
      0,
      notchCenter - notchRadius,
      10,
    );
    
    // Curved notch (this creates the transparent cutout)
    path.arcToPoint(
      Offset(notchCenter + notchRadius, 10),
      radius: const Radius.circular(notchRadius),
      clockwise: false,
    );
    
    // Right curve from notch
    path.quadraticBezierTo(
      notchCenter + notchRadius + 10,
      0,
      notchCenter + notchRadius + 20,
      0,
    );
    
    // Line to top-right corner
    path.lineTo(size.width, 0);
    
    // Draw bottom and left edges to close the shape
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_CurvedNavBarPainter oldDelegate) {
    return oldDelegate.backgroundColor != backgroundColor ||
           oldDelegate.currentIndex != currentIndex;
  }
}

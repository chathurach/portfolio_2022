import 'package:flutter/material.dart';
import 'package:new_portfolio/Portfolio%20Page/desktop_portfolio_page.dart';
import 'package:new_portfolio/Portfolio%20Page/mobile_portfolio_page.dart';

class ResponsivePortfolioPage extends StatelessWidget {
  const ResponsivePortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 500.0
        ? const DesktopPortfolioPage()
        : const MobilePortfolioPage();
  }
}

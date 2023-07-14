import 'package:flutter/material.dart';
import 'package:new_portfolio/Main%20Page/desktop_first_page.dart';
import 'package:new_portfolio/Main%20Page/mobile_first_page.dart';

class ResponsiveMainPage extends StatefulWidget {
  const ResponsiveMainPage({Key? key}) : super(key: key);

  @override
  State<ResponsiveMainPage> createState() => _ResponsiveMainPageState();
}

class _ResponsiveMainPageState extends State<ResponsiveMainPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth < 805.0 ? MobileFirstPage() : DesktopFirstPage();
  }
}

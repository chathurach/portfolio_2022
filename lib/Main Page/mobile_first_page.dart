import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:chathura_chamikara/Portfolio%20Page/responsive_portfolio.dart';
import 'package:chathura_chamikara/Utils/custom_button.dart';
import 'package:seo_renderer/seo_renderer.dart';
import '../Projects Page/projects.dart';
import '../Utils/strings.dart';
import 'navigation_bar.dart';

class MobileFirstPage extends StatelessWidget {
  MobileFirstPage({Key? key}) : super(key: key);

  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;
  Future sendAnalyticsEvent(
      {required String eventName, String? clickevent}) async {
    await _analytics.logEvent(
      name: eventName,
    );
  }

  @override
  Widget build(BuildContext context) {
    final swidth = MediaQuery.of(context).size.width;
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 375),
              childAnimationBuilder: (widget) => SlideAnimation(
                horizontalOffset: MediaQuery.of(context).size.width / 2,
                child: FadeInAnimation(child: widget),
              ),
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 400.0),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      'assets/images/image.jpg',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextRenderer(
                  style: TextRendererStyle.header1,
                  child: Text(
                    "Chathura Chamikara",
                    style: Theme.of(context).textTheme.titleLarge,
                    softWrap: true,
                  ),
                ),
                const SizedBox(height: 5.0),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: TextRenderer(
                    style: TextRendererStyle.paragraph,
                    child: Text(
                      Strings.description,
                      softWrap: true,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
                const SizedBox(height: 5.0),
                NavBarTop(
                    containerWidth:
                        swidth > 540 ? swidth * 0.35 : swidth * 0.6),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: [
                      CustomElevatedButton(
                        name: "Projects",
                        function: () {
                          sendAnalyticsEvent(eventName: "View Projects");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProjectsPage()));
                        },
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      CustomElevatedButton(
                        name: "Portfolio",
                        function: () {
                          sendAnalyticsEvent(eventName: "View Resume");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ResponsivePortfolioPage()));
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

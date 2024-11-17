import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:chathura_chamikara/Portfolio%20Page/responsive_portfolio.dart';
import 'package:chathura_chamikara/Projects%20Page/projects.dart';
import 'package:chathura_chamikara/Utils/custom_button.dart';
import 'package:chathura_chamikara/Utils/strings.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'navigation_bar.dart';

class DesktopFirstPage extends StatelessWidget {
  DesktopFirstPage({Key? key}) : super(key: key);

  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;
  Future sendAnalyticsEvent(
      {required String eventName, String? clickevent}) async {
    await _analytics.logEvent(
      name: eventName,
      //parameters: <String, dynamic>{'clickEvent': clickevent},
    );
  }

  @override
  Widget build(BuildContext context) {
    final swidth = MediaQuery.of(context).size.width;
    return Material(
      child: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 300.0,
                    maxHeight: 550.0,
                  ),
                  child: Image.asset(
                    'assets/images/image.jpg',
                  ),
                ),
                const SizedBox(
                  width: 50.0,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 450.0,
                    maxHeight: 550.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(milliseconds: 375),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        horizontalOffset: MediaQuery.of(context).size.width / 2,
                        child: FadeInAnimation(child: widget),
                      ),
                      children: [
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
                                  sendAnalyticsEvent(
                                      eventName: "View Projects");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProjectsPage()));
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_portfolio/Portfolio%20Page/responsive_portfolio_page.dart';
import 'package:new_portfolio/Utils/strings.dart';
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
                    children: [
                      Text(
                        "Chathura Chamikara",
                        style: Theme.of(context).textTheme.titleLarge,
                        softWrap: true,
                      ),
                      const SizedBox(height: 5.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          Strings.description,
                          softWrap: true,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      NavBarTop(
                          containerWidth:
                              swidth > 540 ? swidth * 0.35 : swidth * 0.6),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            overlayColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 125, 125, 125),
                            ),
                          ),
                          onPressed: () {
                            sendAnalyticsEvent(eventName: "View Resume");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResponsivePortfolio()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Protfolio",
                              style: GoogleFonts.poppins(
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
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

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_portfolio/Main Page/NavigationBar.dart';
import 'package:new_portfolio/Portfolio%20Page/Portfolio.dart';
import 'package:firebase_core/firebase_core.dart';

class TopPage extends StatefulWidget {
  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
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
    var swidth = MediaQuery.of(context).size.width;
    var sheigth = MediaQuery.of(context).size.height;
    //print(swidth);
    return Material(
      child: Center(
        child: SizedBox(
          //color: Color.fromARGB(0, 41, 41, 105),
          width: swidth.toDouble(),
          height: sheigth.toDouble(),
          child: Padding(
            padding: EdgeInsets.all(swidth * 0.002),
            child: Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                //direction: Axis.vertical,
                spacing: swidth * 0.03,
                children: [
                  SizedBox(
                    width: swidth > 540 ? swidth * 0.25 : sheigth * 0.3,
                    height: swidth > 540 ? sheigth * 0.7 : sheigth * 0.5,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/image.jpeg'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: swidth > 540 ? swidth * 0.35 : swidth * 0.6,
                    height: swidth > 540 ? sheigth : sheigth * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chathura",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(height: 1.0),
                            fontWeight: FontWeight.w700,
                            fontSize: swidth > sheigth && swidth > 800
                                ? swidth * 0.055
                                : 30.0,
                          ),
                        ),
                        Text(
                          "Chamikara",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(height: 1.0),
                            fontWeight: FontWeight.w700,
                            fontSize: swidth > sheigth && swidth > 800
                                ? swidth * 0.055
                                : 30.0,
                          ),
                        ),
                        SizedBox(
                          height: sheigth * 0.005,
                        ),
                        Text(
                          "A Material Engineer, Works in Road Development Authority, From Sri Lanka.",
                          style: bodyFont(context),
                          //   style: GoogleFonts.poppins(
                          //       textStyle: const TextStyle(height: 1.5),
                          //       //fontWeight: FontWeight.w700,
                          //       fontSize: sheigth > swidth
                          //           ? swidth.toDouble() * 0.03
                          //           : sheigth.toDouble() * 0.03),
                        ),
                        SizedBox(
                          height: sheigth * 0.015,
                        ),
                        navBarTop(
                            containerWidth:
                                swidth > 540 ? swidth * 0.35 : swidth * 0.6),
                        SizedBox(
                          height: sheigth * 0.015,
                        ),
                        ElevatedButton(
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
                                    builder: (context) => const portfolio()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Protfolio",
                              style: GoogleFonts.poppins(
                                fontSize: swidth > sheigth && swidth > 800
                                    ? swidth * 0.014
                                    : 12.0,
                                fontWeight: FontWeight.normal,
                                //color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

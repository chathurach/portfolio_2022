import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_portfolio/Utils/left_card.dart';
import 'package:new_portfolio/Utils/right_card.dart';
import 'package:new_portfolio/Utils/strings.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ResponsivePortfolio extends StatelessWidget {
  const ResponsivePortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          10.0,
          30.0,
          10.0,
          30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 400.0,
                ),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        "Chathura Chamikara",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Text(
                      "Material Engineer",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      LeftCard(
                          icon: FontAwesomeIcons.pencil,
                          heading: "Personal Information",
                          items: [
                            Strings.name,
                            Strings.gender,
                            Strings.marital,
                            Strings.nationality,
                          ]),
                      LeftCard(
                          icon: FontAwesomeIcons.phone,
                          heading: "Contact Info",
                          items: [
                            Strings.email,
                          ]),
                      LeftCard(
                          icon: FontAwesomeIcons.graduationCap,
                          heading: "Skills",
                          items: [
                            Strings.software,
                            Strings.programming,
                          ]),
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      RightCard(
                          icon: FontAwesomeIcons.briefcase,
                          heading: "Experiance",
                          items: [
                            Strings.experiance1,
                            Strings.experiance2,
                            Strings.experiance3,
                          ]),
                      RightCard(
                          icon: FontAwesomeIcons.graduationCap,
                          heading: "Education",
                          items: [
                            Strings.education1,
                            Strings.education2,
                            Strings.education3,
                            Strings.education4,
                          ]),
                      RightCard(
                          icon: FontAwesomeIcons.certificate,
                          heading: "Certification",
                          items: [
                            Strings.certification1,
                            Strings.certification2,
                          ]),
                      RightCard(
                          icon: FontAwesomeIcons.handshake,
                          heading: "Prefessional Qualification",
                          items: [
                            Strings.professional1,
                          ]),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      overlayColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 125, 125, 125),
                      ),
                    ),
                    onPressed: () {
                      launchURL();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Center(
                        child: Text(
                          "Download Resume",
                          style: GoogleFonts.poppins(
                            fontSize: 20.0,
                            fontWeight: FontWeight.normal,
                          ),
                          softWrap: true,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      overlayColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 125, 125, 125),
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Center(
                        child: Text(
                          "Back",
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
    ));
  }
}

void launchURL() async => await canLaunchUrlString(
        'https://drive.google.com/file/d/1hA9OyNio6UUPyqlwpuHJoua09G1Ybpve/view?usp=sharing')
    ? await launchUrlString(
        'https://drive.google.com/file/d/1hA9OyNio6UUPyqlwpuHJoua09G1Ybpve/view?usp=sharing')
    : throw 'could not launch url';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_portfolio/Utils/custom_button.dart';
import 'package:new_portfolio/Utils/left_card.dart';
import 'package:new_portfolio/Utils/right_card.dart';
import 'package:new_portfolio/Utils/strings.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DesktopPortfolioPage extends StatelessWidget {
  const DesktopPortfolioPage({Key? key}) : super(key: key);

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
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 375),
                    childAnimationBuilder: (widget) => SlideAnimation(
                      horizontalOffset: MediaQuery.of(context).size.width / 2,
                      child: FadeInAnimation(child: widget),
                    ),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                        duration: const Duration(milliseconds: 375),
                        childAnimationBuilder: (widget) => SlideAnimation(
                              horizontalOffset:
                                  MediaQuery.of(context).size.width / 2,
                              child: FadeInAnimation(child: widget),
                            ),
                        children: [
                          const LeftCard(
                              icon: FontAwesomeIcons.pencil,
                              heading: "Personal Information",
                              items: [
                                Strings.name,
                                Strings.gender,
                                Strings.marital,
                                Strings.nationality,
                              ]),
                          const LeftCard(
                              icon: FontAwesomeIcons.phone,
                              heading: "Contact Info",
                              items: [
                                Strings.email,
                              ]),
                          const LeftCard(
                              icon: FontAwesomeIcons.graduationCap,
                              heading: "Skills",
                              items: [
                                Strings.software,
                                Strings.programming,
                              ]),
                        ]),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(milliseconds: 375),
                      childAnimationBuilder: (widget) => SlideAnimation(
                        horizontalOffset: MediaQuery.of(context).size.width / 2,
                        child: FadeInAnimation(child: widget),
                      ),
                      children: [
                        const RightCard(
                            icon: FontAwesomeIcons.briefcase,
                            heading: "Experiance",
                            items: [
                              Strings.experiance1,
                              Strings.experiance2,
                              Strings.experiance3,
                            ]),
                        const RightCard(
                            icon: FontAwesomeIcons.graduationCap,
                            heading: "Education",
                            items: [
                              Strings.education1,
                              Strings.education2,
                              Strings.education3,
                              Strings.education4,
                            ]),
                        const RightCard(
                            icon: FontAwesomeIcons.certificate,
                            heading: "Certification",
                            items: [
                              Strings.certification1,
                              Strings.certification2,
                            ]),
                        const RightCard(
                            icon: FontAwesomeIcons.handshake,
                            heading: "Prefessional Qualification",
                            items: [
                              Strings.professional1,
                            ]),
                      ],
                    ),
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
                  const CustomElevatedButton(
                    name: "Download Resume",
                    function: launchURL,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomElevatedButton(
                    name: "Back",
                    function: () => Navigator.pop(context),
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

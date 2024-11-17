import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:chathura_chamikara/Projects%20Page/project_card.dart';
import 'package:chathura_chamikara/Utils/custom_button.dart';
import 'package:chathura_chamikara/Utils/strings.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 375),
                childAnimationBuilder: (widget) => SlideAnimation(
                  horizontalOffset: MediaQuery.of(context).size.width / 2,
                  child: FadeInAnimation(child: widget),
                ),
                children: [
                  const ProjectCard(
                    image: "assets/images/qs_app.jpg",
                    description: Strings.quickScanner,
                    buttonIcon: FontAwesomeIcons.googlePlay,
                    buttonText: "Quick Scanner",
                    link:
                        "https://play.google.com/store/apps/details?id=com.cchamikara.quickscanner",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const ProjectCard(
                    image: "assets/images/cc_app.jpg",
                    description: Strings.colonyCounter,
                    buttonIcon: FontAwesomeIcons.googlePlay,
                    buttonText: "Colony Counter",
                    link:
                        "https://play.google.com/store/apps/details?id=com.cchamikara.colony_counter_app",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const ProjectCard(
                    image: "assets/images/welfare_app.png",
                    description: Strings.welfareApp,
                    buttonIcon: FontAwesomeIcons.link,
                    buttonText: "Welfare Library",
                    link: "https://welfare-library.web.app/#/",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const ProjectCard(
                    image: "assets/images/research_1.PNG",
                    description: Strings.research1,
                    buttonIcon: FontAwesomeIcons.link,
                    buttonText: "University of Moratuwa",
                    link: "http://dl.lib.uom.lk/handle/123/18036",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const ProjectCard(
                    image: "assets/images/research_2.png",
                    description: Strings.research2,
                    buttonIcon: FontAwesomeIcons.link,
                    buttonText: "University of Moratuwa",
                    link: "http://dl.lib.uom.lk/handle/123/20038",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  CustomElevatedButton(
                      name: "Back",
                      function: () {
                        Navigator.pop(context);
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

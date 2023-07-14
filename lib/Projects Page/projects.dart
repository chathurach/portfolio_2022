import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_portfolio/Projects%20Page/project_card.dart';
import 'package:new_portfolio/Utils/strings.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProjectCard(
            image: "assets/images/qs_app.jpg",
            description: Strings.quickScanner,
            buttonIcon: FontAwesomeIcons.googlePlay,
            buttonText: "Quick Scanner",
            link:
                "https://play.google.com/store/apps/details?id=com.cchamikara.quickscanner",
          ),
          SizedBox(
            height: 20.0,
          ),
          ProjectCard(
            image: "assets/images/cc_app.jpg",
            description: Strings.colonyCounter,
            buttonIcon: FontAwesomeIcons.googlePlay,
            buttonText: "Colony Counter",
            link:
                "https://play.google.com/store/apps/details?id=com.cchamikara.colony_counter_app",
          ),
          SizedBox(
            height: 20.0,
          ),
          ProjectCard(
            image: "assets/images/welfare_app.png",
            description: Strings.welfareApp,
            buttonIcon: FontAwesomeIcons.link,
            buttonText: "Welfare Library",
            link: "https://welfare-library.web.app/#/",
          ),
        ],
      ),
    );
  }
}

import 'dart:js_interop';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {Key? key,
      required this.image,
      required this.description,
      this.link,
      this.buttonIcon,
      this.buttonText})
      : super(key: key);
  final String image;
  final String description;
  final String? link;
  final IconData? buttonIcon;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
              constraints: const BoxConstraints(
                  minWidth: 300.0, maxWidth: 600.0, maxHeight: 200.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Text(
                        description,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                    buttonText.isNull || buttonIcon.isNull
                        ? const SizedBox()
                        : Align(
                            alignment: Alignment.bottomLeft,
                            child: ElevatedButton.icon(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                overlayColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 125, 125, 125),
                                ),
                              ),
                              label: Text(buttonText!),
                              icon: Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, bottom: 5.0),
                                child: Icon(buttonIcon),
                              ),
                              onPressed: () {
                                _launchURL(link!);
                              },
                            ),
                          )
                  ],
                ),
              )),
          SizedBox(
              width: 200.0,
              height: 200.0,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}

void _launchURL(String link) async => await canLaunchUrlString(link)
    ? await launchUrlString(link)
    : throw 'Could not launch url';

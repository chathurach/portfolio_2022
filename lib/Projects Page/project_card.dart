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
    final double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth > 500.0
        ? Card(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                  maxHeight: 200.0, maxWidth: 900.0, minWidth: 400.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Text(
                              description,
                              style: Theme.of(context).textTheme.labelSmall,
                              //overflow: TextOverflow.fade,
                            ),
                          ),
                          buttonText.isNull || buttonIcon.isNull
                              ? const SizedBox()
                              : Align(
                                  alignment: Alignment.bottomLeft,
                                  child: ElevatedButton.icon(
                                    style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      overlayColor: MaterialStateProperty.all(
                                        const Color.fromARGB(
                                            255, 125, 125, 125),
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
                    ),
                  ),
                  SizedBox(
                      width: 200.0,
                      height: 200.0,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            ),
          )
        : Card(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 1000.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 2,
                    child: AspectRatio(
                      aspectRatio: 1.0,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Text(
                        description,
                        style: Theme.of(context).textTheme.labelSmall,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                  buttonText.isNull || buttonIcon.isNull
                      ? const SizedBox()
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
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
                          ),
                        )
                ],
              ),
            ),
          );
  }
}

void _launchURL(String link) async => await canLaunchUrlString(link)
    ? await launchUrlString(link)
    : throw 'Could not launch url';

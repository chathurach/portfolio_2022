import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var swidth = MediaQuery.of(context).size.width;
    var sheigth = MediaQuery.of(context).size.height;
    return Material(
      child: SizedBox(
        width: swidth.toDouble(),
        //height: sheigth.toDouble(),
        child: Padding(
          padding: EdgeInsets.all(sheigth * 0.05),
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.black26)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Chathura Chamikara",
                        style: GoogleFonts.poppins(
                          fontSize: swidth > sheigth ? swidth * 0.06 : 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.black,
                        size: swidth > sheigth && swidth > 800
                            ? swidth * 0.017
                            : 13.0,
                      ),
                    ],
                  ),
                ),
                Text(
                  "Material Engineer",
                  style: GoogleFonts.poppins(
                    fontSize: swidth > sheigth ? swidth * 0.015 : 12.0,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Wrap(
                  //direction: Axis.vertical,
                  spacing: swidth * 0.03,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: swidth > 570 ? swidth * 0.3 : swidth * 0.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.pencil,
                                      size: swidth > sheigth && swidth > 800
                                          ? swidth * 0.017
                                          : 13.0,
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      "Personal Info",
                                      style: headingFont1(context),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  height: 1.0,
                                  color: Colors.black,
                                  thickness: 0.5,
                                ),
                                SizedBox(
                                  height: sheigth * 0.015,
                                ),
                                Text(
                                  "Full Name",
                                  style: headingFont2(context),
                                ),
                                Text("Ahangama Walawage Chathura Chamikara",
                                    style: bodyFont(context)),
                                // Text("Date of Birth",
                                //     style: headingFont2(context)),
                                // Text("22nd September 1989",
                                //     style: bodyFont(context)),
                                Text("Gender", style: headingFont2(context)),
                                Text("Male", style: bodyFont(context)),
                                Text("Marital Status",
                                    style: headingFont2(context)),
                                Text("Married", style: bodyFont(context)),
                                Text("Nationality",
                                    style: headingFont2(context)),
                                Text("Sri Lanka", style: bodyFont(context)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          SizedBox(
                            width: swidth > 570 ? swidth * 0.3 : swidth * 0.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.phone,
                                      size: swidth > sheigth && swidth > 800
                                          ? swidth * 0.017
                                          : 13.0,
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      "Contact Info",
                                      style: headingFont1(context),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  height: 1.0,
                                  color: Colors.black,
                                  thickness: 0.5,
                                ),
                                SizedBox(
                                  height: sheigth * 0.015,
                                ),
                                // Text(
                                //   "Address",
                                //   style: headingFont2(context),
                                // ),
                                // Text("308/36A, Medahena Road, Welegoda, Matara",
                                //     style: bodyFont(context)),
                                // Text("Phone", style: headingFont2(context)),
                                // Text("+9471 014 8315",
                                //     style: bodyFont(context)),
                                Text("Email", style: headingFont2(context)),
                                Text("chathuracha@gmail.com",
                                    style: bodyFont(context)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          SizedBox(
                            width: swidth > 570 ? swidth * 0.3 : swidth * 0.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.graduationCap,
                                      size: swidth > sheigth && swidth > 800
                                          ? swidth * 0.017
                                          : 13.0,
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      "Skills",
                                      style: headingFont1(context),
                                    ),
                                  ],
                                ),
                                const Divider(
                                  height: 1.0,
                                  color: Colors.black,
                                  thickness: 0.5,
                                ),
                                SizedBox(
                                  height: sheigth * 0.015,
                                ),
                                Text(
                                  "Software Packages",
                                  style: headingFont2(context),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("* ", style: bodyFont(context)),
                                    Flexible(
                                      child: Text("Microsoft Office package",
                                          style: bodyFont(context)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("* ", style: bodyFont(context)),
                                    Flexible(
                                      child: Text(
                                          "Adobe Photoshop, Illustrator, InDesign, Premiere",
                                          style: bodyFont(context)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("* ", style: bodyFont(context)),
                                    Flexible(
                                      child: Text("Autodesk AutoCAD, Civil 3D",
                                          style: bodyFont(context)),
                                    ),
                                  ],
                                ),
                                Text("Programming",
                                    style: headingFont2(context)),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("* ", style: bodyFont(context)),
                                    Flexible(
                                      child: Text(
                                          "Languages - Java, JavaScript, Dart,Python",
                                          style: bodyFont(context)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("* ", style: bodyFont(context)),
                                    Flexible(
                                      child: Text(
                                          "Frameworks - Flutter(Dart), P5(JavaScript), NetBeans(Java)",
                                          style: bodyFont(context)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("* ", style: bodyFont(context)),
                                    Flexible(
                                      child: Text("Git/Github, VS Code",
                                          style: bodyFont(context)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                    Column(
                      children: [
                        SizedBox(
                          width: swidth > 570 ? swidth * 0.6 : swidth * 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   width: swidth * 0.5,
                              // ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.briefcase,
                                    size: swidth > sheigth && swidth > 800
                                        ? swidth * 0.017
                                        : 13.0,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "Experiance",
                                    style: headingFont1(context),
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 1.0,
                                color: Colors.black,
                                thickness: 0.5,
                              ),
                              SizedBox(
                                height: sheigth * 0.015,
                              ),
                              Table(
                                columnWidths: const {
                                  0: FlexColumnWidth(1),
                                  1: FlexColumnWidth(3),
                                },
                                children: [
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 3.0),
                                        child: Text("2015.08 - present",
                                            style: headingFont2(context)),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Material Engineer - Road Development Authority",
                                              style: headingFont2(context)),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("* ",
                                                  style: bodyFont(context)),
                                              Flexible(
                                                child: Text(
                                                    "Engineer incharge of concrete laboratory",
                                                    style: bodyFont(context)),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("* ",
                                                  style: bodyFont(context)),
                                              Flexible(
                                                child: Text(
                                                    "Quality Manager of R&D Division",
                                                    style: bodyFont(context)),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("* ",
                                                  style: bodyFont(context)),
                                              Flexible(
                                                child: Text(
                                                    "Authorization of test reports",
                                                    style: bodyFont(context)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 3.0),
                                        child: Text("2014.12 - 2015.08",
                                            style: headingFont2(context)),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Material Engineer - Matara Hakmana Road Project",
                                              style: headingFont2(context)),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("* ",
                                                  style: bodyFont(context)),
                                              Flexible(
                                                child: Text(
                                                    "Ensure the quality of road construction",
                                                    style: bodyFont(context)),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("* ",
                                                  style: bodyFont(context)),
                                              Flexible(
                                                child: Text(
                                                    "Inspect and authorize quality assuarance tests",
                                                    style: bodyFont(context)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 3.0),
                                        child: Text("2014.08 - 2014.12",
                                            style: headingFont2(context)),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Trainee Material Engineer - Matara Hakmana Road Project",
                                              style: headingFont2(context)),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("* ",
                                                  style: bodyFont(context)),
                                              Flexible(
                                                child: Text(
                                                    "Assist Project Engineer in the quality assuarance work",
                                                    style: bodyFont(context)),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("* ",
                                                  style: bodyFont(context)),
                                              Flexible(
                                                child: Text(
                                                    "Prepare test reports and arrange quality assuarance test",
                                                    style: bodyFont(context)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        SizedBox(
                          width: swidth > 570 ? swidth * 0.6 : swidth * 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   width: swidth * 0.5,
                              // ),
                              Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.graduationCap,
                                    size: swidth > sheigth && swidth > 800
                                        ? swidth * 0.017
                                        : 13.0,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "Education",
                                    style: headingFont1(context),
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 1.0,
                                color: Colors.black,
                                thickness: 0.5,
                              ),
                              SizedBox(
                                height: sheigth * 0.015,
                              ),
                              Table(
                                columnWidths: const {
                                  0: FlexColumnWidth(1),
                                  1: FlexColumnWidth(3),
                                },
                                children: [
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 3.0),
                                        child: Text("2016.10 - 2021.04",
                                            style: headingFont2(context)),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Master of Engineering in Highway & Traffic Engineering",
                                              style: headingFont2(context)),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("* ",
                                                  style: bodyFont(context)),
                                              Flexible(
                                                child: Text(
                                                    "Completed with overall GPA of 3.54 and reseach was published with the topic \"Mesuerment of road Surface Undulations using a low cost accelerometer sensor\"",
                                                    style: bodyFont(context)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 3.0),
                                        child: Text("2009.07 - 2014.03",
                                            style: headingFont2(context)),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Honours Degree of Bachelor of the Science of Engineering",
                                              style: headingFont2(context)),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("* ",
                                                  style: bodyFont(context)),
                                              Flexible(
                                                child: Text(
                                                    "Field of specialization in Materials Engineering, passed with acedamic standing of second lower division. Overall GPA 3.18",
                                                    style: bodyFont(context)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 3.0),
                                        child: Text("2008",
                                            style: headingFont2(context)),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "G.C.E. Advanced Level Examination in Physical Sicence",
                                              style: headingFont2(context)),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("* ",
                                                  style: bodyFont(context)),
                                              Flexible(
                                                child: Text(
                                                    "Passed with 3 distinctions for Chemistry, Physics and Combined Maths. Z-score 2.1699",
                                                    style: bodyFont(context)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 3.0),
                                        child: Text("2005",
                                            style: headingFont2(context)),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "G.C.E. Ordinary Level Examination",
                                              style: headingFont2(context)),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("* ",
                                                  style: bodyFont(context)),
                                              Flexible(
                                                child: Text(
                                                    "Passed with 8 distinctions including Mathamatics, Science and Technology and English",
                                                    style: bodyFont(context)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        SizedBox(
                          width: swidth > 570 ? swidth * 0.6 : swidth * 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   width: swidth * 0.5,
                              // ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.certificate,
                                    size: swidth > sheigth && swidth > 800
                                        ? swidth * 0.017
                                        : 13.0,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "Certification",
                                    style: headingFont1(context),
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 1.0,
                                color: Colors.black,
                                thickness: 0.5,
                              ),
                              SizedBox(
                                height: sheigth * 0.015,
                              ),
                              Table(
                                columnWidths: const {
                                  0: FlexColumnWidth(1),
                                  1: FlexColumnWidth(3),
                                },
                                children: [
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 3.0),
                                        child: Text("2018",
                                            style: headingFont2(context)),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Assessor Training Course on ISO/IEC 17025:2017",
                                              style: headingFont2(context)),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 3.0),
                                        child: Text("2018",
                                            style: headingFont2(context)),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "CPD course on Modern Practices In Readymix Concrete",
                                              style: headingFont2(context)),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        SizedBox(
                          width: swidth > 570 ? swidth * 0.6 : swidth * 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.handshake,
                                    size: swidth > sheigth && swidth > 800
                                        ? swidth * 0.017
                                        : 13.0,
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "Professional Qualifications",
                                    style: headingFont1(context),
                                  ),
                                ],
                              ),
                              const Divider(
                                height: 1.0,
                                color: Colors.black,
                                thickness: 0.5,
                              ),
                              SizedBox(
                                height: sheigth * 0.015,
                              ),
                              Table(
                                columnWidths: const {
                                  0: FlexColumnWidth(1),
                                  1: FlexColumnWidth(3),
                                },
                                children: [
                                  TableRow(
                                    children: [
                                      Text("", style: headingFont2(context)),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Associate Member of Institution of Engineers, Sri Lanka, AM-16463",
                                              style: headingFont2(context)),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
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
                      child: Text(
                        "Download Resume",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(height: 1.5),
                          //fontWeight: FontWeight.w700,
                          fontSize: swidth > sheigth && swidth > 800
                              ? swidth * 0.013
                              : 12.0,
                        ),
                      ),
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

TextStyle headingFont1(context) {
  var _width = MediaQuery.of(context).size.width;
  var _height = MediaQuery.of(context).size.height;
  //print(_width);
  //print(_height);
  if (_width > 900) {
    return GoogleFonts.poppins(
      fontSize: _width > _height ? _width * 0.014 : 13.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  } else if (_width > 520) {
    return GoogleFonts.poppins(
      fontSize: _width > _height ? _width * 0.016 : 13.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  } else {
    return GoogleFonts.poppins(
      fontSize: _width > _height ? _width * 0.017 : 13.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }
  // return GoogleFonts.poppins(
  //   fontSize: _width > _height && _width > 800 ? _width * 0.017 : 13.0,
  //   fontWeight: FontWeight.bold,
  //   color: Colors.black,
  // );
}

TextStyle headingFont2(context) {
  var _width = MediaQuery.of(context).size.width;
  var _height = MediaQuery.of(context).size.height;
  if (_width > 900) {
    return GoogleFonts.poppins(
      fontSize: _width > _height ? _width * 0.012 : 12.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  } else if (_width > 520) {
    return GoogleFonts.poppins(
      fontSize: _width > _height ? _width * 0.014 : 12.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  } else {
    return GoogleFonts.poppins(
      fontSize: _width > _height ? _width * 0.015 : 12.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }
}

TextStyle bodyFont(context) {
  var _width = MediaQuery.of(context).size.width;
  var _height = MediaQuery.of(context).size.height;
  if (_width > 900) {
    return GoogleFonts.poppins(
      fontSize: _width > _height ? _width * 0.012 : 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    );
  } else if (_width > 520) {
    return GoogleFonts.poppins(
      fontSize: _width > _height ? _width * 0.014 : 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    );
  } else {
    return GoogleFonts.poppins(
      fontSize: _width > _height ? _width * 0.015 : 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    );
  }
}

void launchURL() async => await canLaunch(
        'https://drive.google.com/file/d/1hA9OyNio6UUPyqlwpuHJoua09G1Ybpve/view?usp=sharing')
    ? await launch(
        'https://drive.google.com/file/d/1hA9OyNio6UUPyqlwpuHJoua09G1Ybpve/view?usp=sharing')
    : throw 'could not launch url';

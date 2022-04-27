import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarTop extends StatefulWidget {
  const NavBarTop({Key? key, required this.containerWidth}) : super(key: key);
  final double containerWidth;
  @override
  _NavBarTopState createState() => _NavBarTopState();
}

class _NavBarTopState extends State<NavBarTop> with TickerProviderStateMixin {
  late AnimationController _controller;
  //late Animation<Color?> _animationBG;
  late AnimationController _controllertw;
  //late Animation<Color?> _animationtw;
  late AnimationController _controllergo;
  late Animation<Color?> _animationgo;
  late AnimationController _controllerln;
  late Animation<Color?> _animationln;
  late AnimationController _controllergh;
  late Animation<Color?> _animationgh;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 150,
      ),
    );

    // _animationBG = ColorTween(
    //   begin: const Color.fromARGB(255, 0, 0, 0),
    //   end: const Color(0xff3b5998),
    // ).animate(_controller)
    //   ..addListener(() {
    //     setState(() {});
    //   });
    _controllertw = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );

    // _animationtw = ColorTween(
    //   begin: const Color.fromARGB(255, 0, 0, 0),
    //   end: const Color(0xff00acee),
    // ).animate(_controllertw)
    //   ..addListener(() {
    //     setState(() {});
    //   });

    _controllergo = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );

    _animationgo = ColorTween(
      begin: const Color.fromARGB(255, 0, 0, 0),
      end: const Color(0xffdb4437),
    ).animate(_controllergo)
      ..addListener(() {
        setState(() {});
      });

    _controllerln = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );

    _animationln = ColorTween(
      begin: const Color.fromARGB(255, 0, 0, 0),
      end: const Color(0xff0e76a8),
    ).animate(_controllerln)
      ..addListener(() {
        setState(() {});
      });

    _controllergh = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );

    _animationgh = ColorTween(
      begin: const Color.fromARGB(255, 0, 0, 0),
      end: const Color(0xff211f1f),
    ).animate(_controllergh)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    _controllertw.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width * 0.6;
    return SizedBox(
      //width: widget.containerWidth,
      // width: 30.0,
      // height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // MouseRegion(
          //   opaque: true,
          //   onEnter: (event) => _controller.forward(),
          //   onExit: (event) => _controller.reverse(),
          //   child: IconButton(
          //     splashRadius: _width * 0.03,
          //     iconSize: _width * 0.03,
          //     onPressed: _launchURLfb,
          //     icon: Icon(
          //       FontAwesomeIcons.facebook,
          //       color: _animationBG.value,
          //       size: _width * 0.03,
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   width: _width * 0.03,
          // ),
          // MouseRegion(
          //   opaque: true,
          //   onEnter: (event) => _controllertw.forward(),
          //   onExit: (event) => _controllertw.reverse(),
          //   child: IconButton(
          //     splashRadius: _width * 0.03,
          //     iconSize: _width * 0.03,
          //     onPressed: _launchURLtw,
          //     icon: Icon(
          //       FontAwesomeIcons.twitter,
          //       color: _animationtw.value,
          //       size: _width * 0.03,
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   width: _width * 0.03,
          // ),
          MouseRegion(
            opaque: true,
            onEnter: (event) => _controllerln.forward(),
            onExit: (event) => _controllerln.reverse(),
            child: IconButton(
              padding: const EdgeInsets.all(5.0),
              splashRadius: _width > 650 ? _width * 0.03 : 20.0,
              iconSize: _width > 650 ? _width * 0.03 : 20.0,
              onPressed: _launchURLln,
              icon: Icon(
                FontAwesomeIcons.linkedin,
                color: _animationln.value,
                size: _width > 650 ? _width * 0.03 : 20.0,
              ),
            ),
          ),
          SizedBox(
            width: _width * 0.03,
          ),
          MouseRegion(
            opaque: true,
            onEnter: (event) => _controllergh.forward(),
            onExit: (event) => _controllergh.reverse(),
            child: IconButton(
              padding: const EdgeInsets.all(5.0),
              splashRadius: _width > 650 ? _width * 0.03 : 20.0,
              iconSize: _width > 650 ? _width * 0.03 : 20.0,
              onPressed: _launchURLgh,
              icon: Icon(
                FontAwesomeIcons.github,
                color: _animationgh.value,
                size: _width > 650 ? _width * 0.03 : 20.0,
              ),
            ),
          ),
          SizedBox(
            width: _width * 0.03,
          ),
          MouseRegion(
            opaque: true,
            onEnter: (event) => _controllergo.forward(),
            onExit: (event) => _controllergo.reverse(),
            child: IconButton(
              padding: const EdgeInsets.all(5.0),
              splashRadius: _width > 650 ? _width * 0.03 : 20.0,
              iconSize: _width > 650 ? _width * 0.03 : 20.0,
              onPressed: _launchURLgo,
              icon: Icon(
                FontAwesomeIcons.google,
                color: _animationgo.value,
                size: _width > 650 ? _width * 0.03 : 20.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  // void _launchURLtw() async =>
  //     await canLaunch('https://twitter.com/shutdownsec')
  //         ? await launch('https://twitter.com/shutdownsec')
  //         : throw 'Could not launch url';

  // void _launchURLfb() async =>
  //     await canLaunch('https://www.facebook.com/chathurac')
  //         ? await launch('https://www.facebook.com/chathurac')
  //         : throw 'Could not launch url';

  void _launchURLgo() async =>
      await canLaunch('mailto:chathuracha@gmail.com?subject=&body=')
          ? await launch('mailto:chathuracha@gmail.com?subject=&body=')
          : throw 'Could not launch url';

  void _launchURLln() async =>
      await canLaunch('https://www.linkedin.com/in/chathurac')
          ? await launch('https://www.linkedin.com/in/chathurac')
          : throw 'Could not launch url';

  void _launchURLgh() async => await canLaunch('https://github.com/chathurach')
      ? await launch('https://github.com/chathurach')
      : throw 'Could not launch url';
}

// class navBarMobile extends StatefulWidget {
//   const navBarMobile({Key? key, required containerWidth}) : super(key: key);

//   @override
//   _navBarMobileState createState() => _navBarMobileState();
// }

// class _navBarMobileState extends State<navBarMobile>
//     with TickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<Color?> _animationBG;
//   late AnimationController _controllertw;
//   late Animation<Color?> _animationtw;
//   late AnimationController _controllergo;
//   late Animation<Color?> _animationgo;
//   late AnimationController _controllerln;
//   late Animation<Color?> _animationln;
//   late AnimationController _controllergh;
//   late Animation<Color?> _animationgh;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(
//         milliseconds: 150,
//       ),
//     );

//     _animationBG = ColorTween(
//       begin: const Color(0xffFEFFFF),
//       end: const Color(0xff3b5998),
//     ).animate(_controller)
//       ..addListener(() {
//         setState(() {});
//       });
//     _controllertw = AnimationController(
//       vsync: this,
//       duration: const Duration(
//         milliseconds: 300,
//       ),
//     );

//     _animationtw = ColorTween(
//       begin: const Color(0xffFEFFFF),
//       end: const Color(0xff00acee),
//     ).animate(_controllertw)
//       ..addListener(() {
//         setState(() {});
//       });

//     _controllergo = AnimationController(
//       vsync: this,
//       duration: const Duration(
//         milliseconds: 300,
//       ),
//     );

//     _animationgo = ColorTween(
//       begin: const Color(0xffFEFFFF),
//       end: const Color(0xffdb4437),
//     ).animate(_controllergo)
//       ..addListener(() {
//         setState(() {});
//       });

//     _controllerln = AnimationController(
//       vsync: this,
//       duration: const Duration(
//         milliseconds: 300,
//       ),
//     );

//     _animationln = ColorTween(
//       begin: const Color(0xffFEFFFF),
//       end: const Color(0xff0e76a8),
//     ).animate(_controllerln)
//       ..addListener(() {
//         setState(() {});
//       });

//     _controllergh = AnimationController(
//       vsync: this,
//       duration: const Duration(
//         milliseconds: 300,
//       ),
//     );

//     _animationgh = ColorTween(
//       begin: const Color(0xffFEFFFF),
//       end: const Color(0xff211f1f),
//     ).animate(_controllergh)
//       ..addListener(() {
//         setState(() {});
//       });

//     Timer(const Duration(milliseconds: 500), () {
//       _controller.forward();
//       Timer(const Duration(milliseconds: 1000), () {
//         _controller.reverse();
//       });
//     });

//     Timer(const Duration(milliseconds: 1000), () {
//       _controllertw.forward();
//       Timer(const Duration(milliseconds: 1000), () {
//         _controllertw.reverse();
//       });
//     });

//     Timer(const Duration(milliseconds: 1500), () {
//       _controllerln.forward();
//       Timer(const Duration(milliseconds: 1000), () {
//         _controllerln.reverse();
//       });
//     });

//     Timer(const Duration(milliseconds: 2000), () {
//       _controllergh.forward();
//       Timer(const Duration(milliseconds: 1000), () {
//         _controllergh.reverse();
//       });
//     });
//     Timer(const Duration(milliseconds: 2500), () {
//       _controllergo.forward();
//       Timer(const Duration(milliseconds: 1000), () {
//         _controllergo.reverse();
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _controllertw.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var _width = MediaQuery.of(context).size.width;
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           MouseRegion(
//             opaque: true,
//             onEnter: (event) => _controller.forward(),
//             onExit: (event) => _controller.reverse(),
//             child: IconButton(
//               iconSize: _width * 0.05,
//               onPressed: _launchURLfb,
//               icon: Icon(
//                 FontAwesomeIcons.facebook,
//                 color: _animationBG.value,
//                 size: _width * 0.05,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: _width * 0.03,
//           ),
//           MouseRegion(
//             opaque: true,
//             onEnter: (event) => _controllertw.forward(),
//             onExit: (event) => _controllertw.reverse(),
//             child: IconButton(
//               iconSize: _width * 0.05,
//               onPressed: _launchURLtw,
//               icon: Icon(
//                 FontAwesomeIcons.twitter,
//                 color: _animationtw.value,
//                 size: _width * 0.05,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: _width * 0.03,
//           ),
//           MouseRegion(
//             opaque: true,
//             onEnter: (event) => _controllerln.forward(),
//             onExit: (event) => _controllerln.reverse(),
//             child: IconButton(
//               iconSize: _width * 0.05,
//               onPressed: _launchURLln,
//               icon: Icon(
//                 FontAwesomeIcons.linkedin,
//                 color: _animationln.value,
//                 size: _width * 0.05,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: _width * 0.03,
//           ),
//           MouseRegion(
//             opaque: true,
//             onEnter: (event) => _controllergh.forward(),
//             onExit: (event) => _controllergh.reverse(),
//             child: IconButton(
//               iconSize: _width * 0.05,
//               onPressed: _launchURLgh,
//               icon: Icon(
//                 FontAwesomeIcons.github,
//                 color: _animationgh.value,
//                 size: _width * 0.05,
//               ),
//             ),
//           ),
//           SizedBox(
//             width: _width * 0.03,
//           ),
//           MouseRegion(
//             opaque: true,
//             onEnter: (event) => _controllergo.forward(),
//             onExit: (event) => _controllergo.reverse(),
//             child: IconButton(
//               iconSize: _width * 0.05,
//               onPressed: _launchURLgo,
//               icon: Icon(
//                 FontAwesomeIcons.google,
//                 color: _animationgo.value,
//                 size: _width * 0.05,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   void _launchURLtw() async =>
//       await canLaunch('https://twitter.com/shutdownsec')
//           ? await launch('https://twitter.com/shutdownsec')
//           : throw 'Could not launch url';

//   void _launchURLfb() async =>
//       await canLaunch('https://www.facebook.com/chathurac')
//           ? await launch('https://www.facebook.com/chathurac')
//           : throw 'Could not launch url';

//   void _launchURLgo() async =>
//       await canLaunch('mailto:chathuracha@gmail.com?subject=&body=')
//           ? await launch('mailto:chathuracha@gmail.com?subject=&body=')
//           : throw 'Could not launch url';

//   void _launchURLln() async =>
//       await canLaunch('https://www.linkedin.com/in/chathurac')
//           ? await launch('https://www.linkedin.com/in/chathurac')
//           : throw 'Could not launch url';

//   void _launchURLgh() async => await canLaunch('https://github.com/chathurach')
//       ? await launch('https://github.com/chathurach')
//       : throw 'Could not launch url';
// }

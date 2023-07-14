import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NavBarTop extends StatefulWidget {
  const NavBarTop({Key? key, required this.containerWidth}) : super(key: key);
  final double containerWidth;
  @override
  _NavBarTopState createState() => _NavBarTopState();
}

class _NavBarTopState extends State<NavBarTop> with TickerProviderStateMixin {
  late AnimationController _controller;

  late AnimationController _controllertw;

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

    _controllertw = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
    );

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

  void _launchURLgo() async =>
      await canLaunchUrlString('mailto:chathuracha@gmail.com?subject=&body=')
          ? await launchUrlString('mailto:chathuracha@gmail.com?subject=&body=')
          : throw 'Could not launch url';

  void _launchURLln() async =>
      await canLaunchUrlString('https://www.linkedin.com/in/chathurac')
          ? await launchUrlString('https://www.linkedin.com/in/chathurac')
          : throw 'Could not launch url';

  void _launchURLgh() async =>
      await canLaunchUrlString('https://github.com/chathurach')
          ? await launchUrlString('https://github.com/chathurach')
          : throw 'Could not launch url';
}

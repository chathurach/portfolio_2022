import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:new_portfolio/Main%20Page/responsive_main_page.dart';
import 'package:new_portfolio/Projects%20Page/projects.dart';
import 'package:new_portfolio/Utils/text_theme.dart';
import 'Services/firebase_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseConfig.platformOptions);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chathura',
      theme: ThemeData(
        textTheme: textTheme,
        primarySwatch: Colors.blue,
      ),
      home: const ProjectsPage(),
    );
  }
}

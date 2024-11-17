import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:chathura_chamikara/Main%20Page/responsive_main_page.dart';
import 'package:chathura_chamikara/Utils/text_theme.dart';
import 'Services/firebase_config.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseConfig.platformOptions);
  runApp(
    const RobotDetector(
      child: MyApp(),
    ),
  );
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
      home: const ResponsiveMainPage(),
    );
  }
}

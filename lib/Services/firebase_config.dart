import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    return const FirebaseOptions(
        apiKey: "AIzaSyC-j1GfmWgupUU5-qbNWcqalGwwAHfBXSY",
        authDomain: "web-portfolio-50bb1.firebaseapp.com",
        projectId: "web-portfolio-50bb1",
        storageBucket: "web-portfolio-50bb1.appspot.com",
        messagingSenderId: "105107535567",
        appId: "1:105107535567:web:73bf869170b88f4602a9ba",
        measurementId: "G-KC73865MVK");
  }
}

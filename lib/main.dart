import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insta_bloc/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyB8HVHihw5U8XapkJXIwR8-VT2SHlvDo84",
            appId: "1:850422198254:android:060d33fcfc00b892bce8ff",
            messagingSenderId: "850422198254",
            projectId: "insta-test-8191f",
          ),
        )
      : Firebase.initializeApp();
  runApp(const MainApp());
}

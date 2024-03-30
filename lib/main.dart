// ignore_for_file: prefer_const_constructors

import 'package:chat_app_with_api/screens/chat_screen.dart';
import 'package:chat_app_with_api/screens/login_screen.dart';
import 'package:chat_app_with_api/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_app_check/firebase_app_check.dart';

Future<void> main() async {
  FirebaseAppCheck;
  // Initialize App Check.

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => LoginPage(),
        SignUp.id: (context) => SignUp(),
        ChatPage.id: (context) => ChatPage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id,
    );
  }
}

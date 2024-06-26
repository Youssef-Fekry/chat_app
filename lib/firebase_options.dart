// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBuwTijp7eRMBxDktij-SjX8f16gkdcc48',
    appId: '1:1061757893755:web:e5342757978eba754076de',
    messagingSenderId: '1061757893755',
    projectId: 'chat-app-8644b',
    authDomain: 'chat-app-8644b.firebaseapp.com',
    storageBucket: 'chat-app-8644b.appspot.com',
    measurementId: 'G-8VMV08T71E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHG1jLmJpJliEvPhB4iSKr9bFF06wHsPA',
    appId: '1:1061757893755:android:669f6c79561ffc4d4076de',
    messagingSenderId: '1061757893755',
    projectId: 'chat-app-8644b',
    storageBucket: 'chat-app-8644b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAHcWwbyBndtj-oVWfKfYn6DAEv-C45LfU',
    appId: '1:1061757893755:ios:ea8ad07949f0f5124076de',
    messagingSenderId: '1061757893755',
    projectId: 'chat-app-8644b',
    storageBucket: 'chat-app-8644b.appspot.com',
    iosBundleId: 'com.example.chatAppWithApi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAHcWwbyBndtj-oVWfKfYn6DAEv-C45LfU',
    appId: '1:1061757893755:ios:d79bad9b5a36e4364076de',
    messagingSenderId: '1061757893755',
    projectId: 'chat-app-8644b',
    storageBucket: 'chat-app-8644b.appspot.com',
    iosBundleId: 'com.example.chatAppWithApi.RunnerTests',
  );
}

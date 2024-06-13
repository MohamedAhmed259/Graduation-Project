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
    apiKey: 'AIzaSyBwTZ0bJFhEZzyiHPU6Vw0EadmhjEk2FHE',
    appId: '1:82070523382:web:84f6471c61e9856e148bd7',
    messagingSenderId: '82070523382',
    projectId: 'skin-vision-f9853',
    authDomain: 'skin-vision-f9853.firebaseapp.com',
    storageBucket: 'skin-vision-f9853.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB3UrEJ_PKqVoimDpaOyK5SGs0d9msU528',
    appId: '1:82070523382:android:7111928cf693c192148bd7',
    messagingSenderId: '82070523382',
    projectId: 'skin-vision-f9853',
    storageBucket: 'skin-vision-f9853.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD6soG1GJoE7MoMZlVZq9bddOgwaGQv3iY',
    appId: '1:82070523382:ios:27ae7f96605fd6e6148bd7',
    messagingSenderId: '82070523382',
    projectId: 'skin-vision-f9853',
    storageBucket: 'skin-vision-f9853.appspot.com',
    iosBundleId: 'com.example.untitled2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD6soG1GJoE7MoMZlVZq9bddOgwaGQv3iY',
    appId: '1:82070523382:ios:2828c707b9cf8c4c148bd7',
    messagingSenderId: '82070523382',
    projectId: 'skin-vision-f9853',
    storageBucket: 'skin-vision-f9853.appspot.com',
    iosBundleId: 'com.example.untitled2.RunnerTests',
  );
}

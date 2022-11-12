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
    apiKey: 'AIzaSyBid7LE_BUFAZ5uNq8Q_kmcNHtCQtZZyXA',
    appId: '1:812407926166:web:97e59425b55a04d50001b7',
    messagingSenderId: '812407926166',
    projectId: 'uasakhir-f4cc9',
    authDomain: 'uasakhir-f4cc9.firebaseapp.com',
    storageBucket: 'uasakhir-f4cc9.appspot.com',
    measurementId: 'G-1TDFTRY0R0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAcYv0clN-A6rrcr8sqTtfPImYaT0PBDyA',
    appId: '1:812407926166:android:64934afcf0a0df9b0001b7',
    messagingSenderId: '812407926166',
    projectId: 'uasakhir-f4cc9',
    storageBucket: 'uasakhir-f4cc9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1yBDXeCiLt-peSOv2QMHtiDUOPAzxk1E',
    appId: '1:812407926166:ios:777d712eb06332910001b7',
    messagingSenderId: '812407926166',
    projectId: 'uasakhir-f4cc9',
    storageBucket: 'uasakhir-f4cc9.appspot.com',
    iosClientId: '812407926166-6ivm8gai8ritj3so4hc1o198l06f6jgt.apps.googleusercontent.com',
    iosBundleId: 'com.example.aplikasiIni',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1yBDXeCiLt-peSOv2QMHtiDUOPAzxk1E',
    appId: '1:812407926166:ios:777d712eb06332910001b7',
    messagingSenderId: '812407926166',
    projectId: 'uasakhir-f4cc9',
    storageBucket: 'uasakhir-f4cc9.appspot.com',
    iosClientId: '812407926166-6ivm8gai8ritj3so4hc1o198l06f6jgt.apps.googleusercontent.com',
    iosBundleId: 'com.example.aplikasiIni',
  );
}
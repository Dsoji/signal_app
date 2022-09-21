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
    apiKey: 'AIzaSyCVPA15nE5mIJXN1J8OD-0Ljm6HqFHNxNo',
    appId: '1:63897695345:web:59ed09fe34ffe379e457d0',
    messagingSenderId: '63897695345',
    projectId: 'greepipsfx-project',
    authDomain: 'greepipsfx-project.firebaseapp.com',
    storageBucket: 'greepipsfx-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3CarAXcMWHNbW6OuY3llmhlAskmcL9n4',
    appId: '1:63897695345:android:344f2def8e8872a4e457d0',
    messagingSenderId: '63897695345',
    projectId: 'greepipsfx-project',
    storageBucket: 'greepipsfx-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBInydZT8jRWY4I5uMufXDvPXmfKEYMOwU',
    appId: '1:63897695345:ios:d88e3d3f963c8541e457d0',
    messagingSenderId: '63897695345',
    projectId: 'greepipsfx-project',
    storageBucket: 'greepipsfx-project.appspot.com',
    iosClientId: '63897695345-552dobril93m3ssat6esr7n5qrnb8mhe.apps.googleusercontent.com',
    iosBundleId: 'com.example.signalApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBInydZT8jRWY4I5uMufXDvPXmfKEYMOwU',
    appId: '1:63897695345:ios:d88e3d3f963c8541e457d0',
    messagingSenderId: '63897695345',
    projectId: 'greepipsfx-project',
    storageBucket: 'greepipsfx-project.appspot.com',
    iosClientId: '63897695345-552dobril93m3ssat6esr7n5qrnb8mhe.apps.googleusercontent.com',
    iosBundleId: 'com.example.signalApp',
  );
}

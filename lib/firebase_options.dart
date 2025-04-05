// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyC85_a54-lQBD9fLZx0ccDIQXsu0mYmAIo',
    appId: '1:751144778597:web:d9eee7c7acdd583a0eff8c',
    messagingSenderId: '751144778597',
    projectId: 'fir-authentication-44011',
    authDomain: 'fir-authentication-44011.firebaseapp.com',
    storageBucket: 'fir-authentication-44011.firebasestorage.app',
    measurementId: 'G-HX1VM4Y6ZF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBZkdiMlPHYT3jj2Z55XZAkH2zNuOti9nQ',
    appId: '1:751144778597:android:246f5b6c2e97db130eff8c',
    messagingSenderId: '751144778597',
    projectId: 'fir-authentication-44011',
    storageBucket: 'fir-authentication-44011.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD09xr18vAM5lzmZbZ-MmIYiNDkxzSAFk0',
    appId: '1:751144778597:ios:2f9df913978f8cf80eff8c',
    messagingSenderId: '751144778597',
    projectId: 'fir-authentication-44011',
    storageBucket: 'fir-authentication-44011.firebasestorage.app',
    iosBundleId: 'com.example.flutterAuthProj',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD09xr18vAM5lzmZbZ-MmIYiNDkxzSAFk0',
    appId: '1:751144778597:ios:2f9df913978f8cf80eff8c',
    messagingSenderId: '751144778597',
    projectId: 'fir-authentication-44011',
    storageBucket: 'fir-authentication-44011.firebasestorage.app',
    iosBundleId: 'com.example.flutterAuthProj',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC85_a54-lQBD9fLZx0ccDIQXsu0mYmAIo',
    appId: '1:751144778597:web:78cc127350c9996b0eff8c',
    messagingSenderId: '751144778597',
    projectId: 'fir-authentication-44011',
    authDomain: 'fir-authentication-44011.firebaseapp.com',
    storageBucket: 'fir-authentication-44011.firebasestorage.app',
    measurementId: 'G-WVKB15D75P',
  );
}

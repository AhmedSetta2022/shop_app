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
    apiKey: 'AIzaSyBLvWziaHjZFa8HJY-O_mQpSx0k4bjdAuQ',
    appId: '1:856486245512:web:0103e55cb80b55a79bdb3d',
    messagingSenderId: '856486245512',
    projectId: 'shopapp-47292',
    authDomain: 'shopapp-47292.firebaseapp.com',
    storageBucket: 'shopapp-47292.appspot.com',
    measurementId: 'G-GQP32QK7LL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6pPqpzg2zEzkmNdh4YIUUneKldOcKA8k',
    appId: '1:856486245512:android:6ca5d292bfbd320e9bdb3d',
    messagingSenderId: '856486245512',
    projectId: 'shopapp-47292',
    storageBucket: 'shopapp-47292.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZsrO1kTlVgu5Qgi5-M6sUuoQ1pPHcy80',
    appId: '1:856486245512:ios:956316855b82408f9bdb3d',
    messagingSenderId: '856486245512',
    projectId: 'shopapp-47292',
    storageBucket: 'shopapp-47292.appspot.com',
    iosClientId: '856486245512-osgjgd5dr6l917el07ba7op4p6cdckjb.apps.googleusercontent.com',
    iosBundleId: 'com.example.shopApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAZsrO1kTlVgu5Qgi5-M6sUuoQ1pPHcy80',
    appId: '1:856486245512:ios:956316855b82408f9bdb3d',
    messagingSenderId: '856486245512',
    projectId: 'shopapp-47292',
    storageBucket: 'shopapp-47292.appspot.com',
    iosClientId: '856486245512-osgjgd5dr6l917el07ba7op4p6cdckjb.apps.googleusercontent.com',
    iosBundleId: 'com.example.shopApp',
  );
}

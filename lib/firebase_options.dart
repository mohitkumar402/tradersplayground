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
    apiKey: 'AIzaSyAk_Xa2xo5UOyCoihi_g2G56dgsVYOb8KY',
    appId: '1:118592194462:web:34dfae962196c83211f88f',
    messagingSenderId: '118592194462',
    projectId: 'tradersplayground-f4dff',
    authDomain: 'tradersplayground-f4dff.firebaseapp.com',
    storageBucket: 'tradersplayground-f4dff.firebasestorage.app',
    measurementId: 'G-Q9NJWWKHWB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD7ILqIBhE6DZ2XOuK3YvPtX1dGzFdVMWs',
    appId: '1:118592194462:android:b5ce41cf720399e011f88f',
    messagingSenderId: '118592194462',
    projectId: 'tradersplayground-f4dff',
    storageBucket: 'tradersplayground-f4dff.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0feNCpv5CGVo076HVAt22eSiToA4LqNc',
    appId: '1:118592194462:ios:483b155f2024c0bc11f88f',
    messagingSenderId: '118592194462',
    projectId: 'tradersplayground-f4dff',
    storageBucket: 'tradersplayground-f4dff.firebasestorage.app',
    iosBundleId: 'com.example.tradersplayground',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB0feNCpv5CGVo076HVAt22eSiToA4LqNc',
    appId: '1:118592194462:ios:483b155f2024c0bc11f88f',
    messagingSenderId: '118592194462',
    projectId: 'tradersplayground-f4dff',
    storageBucket: 'tradersplayground-f4dff.firebasestorage.app',
    iosBundleId: 'com.example.tradersplayground',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAk_Xa2xo5UOyCoihi_g2G56dgsVYOb8KY',
    appId: '1:118592194462:web:a050ab6e179cc47b11f88f',
    messagingSenderId: '118592194462',
    projectId: 'tradersplayground-f4dff',
    authDomain: 'tradersplayground-f4dff.firebaseapp.com',
    storageBucket: 'tradersplayground-f4dff.firebasestorage.app',
    measurementId: 'G-GH3VFBJCPT',
  );
}

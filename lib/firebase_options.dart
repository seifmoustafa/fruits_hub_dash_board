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
    apiKey: 'AIzaSyC2Lg0QtpibeA262qryvqHc2_bk9kbsvAY',
    appId: '1:906709640979:web:7c1b394e1fc4fa4ad1dce6',
    messagingSenderId: '906709640979',
    projectId: 'fruithub-6363a',
    authDomain: 'fruithub-6363a.firebaseapp.com',
    storageBucket: 'fruithub-6363a.firebasestorage.app',
    measurementId: 'G-ZMGWGMRX9W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-YjHBJiKeNv-MYL0C2TTCdIdtfnOL7z8',
    appId: '1:906709640979:android:a3a6327ab92aac13d1dce6',
    messagingSenderId: '906709640979',
    projectId: 'fruithub-6363a',
    storageBucket: 'fruithub-6363a.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCQYv14B5wuqGTIOYmeaVJbSvw-VHsGopA',
    appId: '1:906709640979:ios:e2cadab9b9545600d1dce6',
    messagingSenderId: '906709640979',
    projectId: 'fruithub-6363a',
    storageBucket: 'fruithub-6363a.firebasestorage.app',
    androidClientId: '906709640979-nkmi3iji6kcvggl8v80ikfo1ajg4kljh.apps.googleusercontent.com',
    iosClientId: '906709640979-mm7mec5uebtj6jsuotrdmsgc35hkahj3.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitsHubDashBoard',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCQYv14B5wuqGTIOYmeaVJbSvw-VHsGopA',
    appId: '1:906709640979:ios:e2cadab9b9545600d1dce6',
    messagingSenderId: '906709640979',
    projectId: 'fruithub-6363a',
    storageBucket: 'fruithub-6363a.firebasestorage.app',
    androidClientId: '906709640979-nkmi3iji6kcvggl8v80ikfo1ajg4kljh.apps.googleusercontent.com',
    iosClientId: '906709640979-mm7mec5uebtj6jsuotrdmsgc35hkahj3.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitsHubDashBoard',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC2Lg0QtpibeA262qryvqHc2_bk9kbsvAY',
    appId: '1:906709640979:web:7219d8e200dc367bd1dce6',
    messagingSenderId: '906709640979',
    projectId: 'fruithub-6363a',
    authDomain: 'fruithub-6363a.firebaseapp.com',
    storageBucket: 'fruithub-6363a.firebasestorage.app',
    measurementId: 'G-DK6DQ41Z1Z',
  );
}

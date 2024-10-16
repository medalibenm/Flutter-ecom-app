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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB6XQYhQA_zffFp6iBspRnyoIIOd9vbhYg',
    appId: '1:184534584182:web:ef48482dfb2a4bc1774857',
    messagingSenderId: '184534584182',
    projectId: 'ecom-app-b8597',
    authDomain: 'ecom-app-b8597.firebaseapp.com',
    storageBucket: 'ecom-app-b8597.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCb5fl7CIxTUicW9N7k15_cbwnb3C8bhbY',
    appId: '1:184534584182:android:80b06f28f6e98662774857',
    messagingSenderId: '184534584182',
    projectId: 'ecom-app-b8597',
    storageBucket: 'ecom-app-b8597.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDpB4oPCDgV5hfiNI5mLZZauo5DcD9kd_k',
    appId: '1:184534584182:ios:245aee9795ddec5e774857',
    messagingSenderId: '184534584182',
    projectId: 'ecom-app-b8597',
    storageBucket: 'ecom-app-b8597.appspot.com',
    androidClientId: '184534584182-mh1hsgmhl7nrrtnv30tlkag95li03b19.apps.googleusercontent.com',
    iosClientId: '184534584182-inebo5lcflbns3smv2vv4h97htcq8ugn.apps.googleusercontent.com',
    iosBundleId: 'com.example.tStore',
  );

}
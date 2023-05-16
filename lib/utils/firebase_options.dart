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
    apiKey: 'AIzaSyBR-jFRS99ZyS_FKc3jdfh1RBgt-0QRRfg',
    appId: '1:9265569964:web:95228a0c9323dfc0d4bf09',
    messagingSenderId: '9265569964',
    projectId: 'fast-shopping-89c01',
    authDomain: 'fast-shopping-89c01.firebaseapp.com',
    storageBucket: 'fast-shopping-89c01.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-7ZYk5TssK-rZp0Wv66k92rL9JhnFjNA',
    appId: '1:9265569964:android:6b71d04eca263a33d4bf09',
    messagingSenderId: '9265569964',
    projectId: 'fast-shopping-89c01',
    storageBucket: 'fast-shopping-89c01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCWxJ4LG6ks0CcvPynvdc_lMouLozpExoc',
    appId: '1:9265569964:ios:16c88f1c9a2e403cd4bf09',
    messagingSenderId: '9265569964',
    projectId: 'fast-shopping-89c01',
    storageBucket: 'fast-shopping-89c01.appspot.com',
    iosClientId: '9265569964-9vc1c36uuc26ktidlng8k1igvujajfbp.apps.googleusercontent.com',
    iosBundleId: 'com.example.fastShopping',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCWxJ4LG6ks0CcvPynvdc_lMouLozpExoc',
    appId: '1:9265569964:ios:16c88f1c9a2e403cd4bf09',
    messagingSenderId: '9265569964',
    projectId: 'fast-shopping-89c01',
    storageBucket: 'fast-shopping-89c01.appspot.com',
    iosClientId: '9265569964-9vc1c36uuc26ktidlng8k1igvujajfbp.apps.googleusercontent.com',
    iosBundleId: 'com.example.fastShopping',
  );
}

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
    apiKey: 'AIzaSyAZDUxnmTkIHKTJeSHGU9iAXFs-_IKw-4g',
    appId: '1:504349619174:web:ddac7463795a0edc0e9c27',
    messagingSenderId: '504349619174',
    projectId: 'brainwaive-social-media',
    authDomain: 'brainwaive-social-media.firebaseapp.com',
    storageBucket: 'brainwaive-social-media.appspot.com',
    measurementId: 'G-S5EWGFJ70K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqyye0y1mYF9gi4NCNQVHzExXerWdfcwY',
    appId: '1:504349619174:android:ee53331dd4804e1d0e9c27',
    messagingSenderId: '504349619174',
    projectId: 'brainwaive-social-media',
    storageBucket: 'brainwaive-social-media.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAoYusJL_i72Okmzfu1swSrwAS28Bqnc0E',
    appId: '1:504349619174:ios:8d11f061e36dfc170e9c27',
    messagingSenderId: '504349619174',
    projectId: 'brainwaive-social-media',
    storageBucket: 'brainwaive-social-media.appspot.com',
    iosBundleId: 'app.brainwaive.brainwaivesocialapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAoYusJL_i72Okmzfu1swSrwAS28Bqnc0E',
    appId: '1:504349619174:ios:8d11f061e36dfc170e9c27',
    messagingSenderId: '504349619174',
    projectId: 'brainwaive-social-media',
    storageBucket: 'brainwaive-social-media.appspot.com',
    iosBundleId: 'app.brainwaive.brainwaivesocialapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAZDUxnmTkIHKTJeSHGU9iAXFs-_IKw-4g',
    appId: '1:504349619174:web:806417638aa78d900e9c27',
    messagingSenderId: '504349619174',
    projectId: 'brainwaive-social-media',
    authDomain: 'brainwaive-social-media.firebaseapp.com',
    storageBucket: 'brainwaive-social-media.appspot.com',
    measurementId: 'G-PX38VBDRNR',
  );
}

// File: lib/firebase_options.dart
// GENERATED MANUALLY

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macOS.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCebebOZX09i8DOTuzrvhA0l_oMHIheNSI',
    appId: '1:271743736165:android:63a9e430f1727ce559a98c',
    messagingSenderId: '271743736165',
    projectId: 'loci-6720d',
    storageBucket: 'loci-6720d.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDe5ZRUej_aYhuOP_OyaK4YxE_YewiVXKc',
    appId: '1:271743736165:ios:10c61b0d1bc0a87559a98c',
    messagingSenderId: '271743736165',
    projectId: 'loci-6720d',
    storageBucket: 'loci-6720d.firebasestorage.app',
    iosBundleId: 'com.example.loci',
  );
}

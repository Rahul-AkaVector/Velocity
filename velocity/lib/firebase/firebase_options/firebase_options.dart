import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DefaulFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (Platform.isIOS) {
      return FirebaseOptions(
        apiKey: dotenv.env['FIREBASE_API_KEY_IOS'] ?? 'FIREBASE_API_KEY_IOS not found',
        appId: dotenv.env['FIREBASE_APP_ID_IOS'] ?? 'FIREBASE_APP_ID_IOS not found',
        messagingSenderId: dotenv.env['FIREBASE_MESSAGING_SENDER_ID'] ?? 'FIREBASE_MESSAGING_SENDER_ID not found',
        projectId: dotenv.env['FIREBASE_PROJECT_ID'] ?? 'FIREBASE_PROJECT_ID not found',
        iosBundleId: dotenv.env['FIREBASE_IOS_BUNDLE_ID'] ?? 'FIREBASE_IOS_BUNDLE_ID not found',
      );
    } else {
      return FirebaseOptions(
        apiKey: dotenv.env['FIREBASE_API_KEY_ANDROID'] ?? 'FIREBASE_API_KEY_ANDROID not found',
        appId: dotenv.env['FIREBASE_APP_ID_ANDROID'] ?? 'FIREBASE_APP_ID_ANDROID not found',
        messagingSenderId: dotenv.env['FIREBASE_MESSAGING_SENDER_ID'] ?? 'FIREBASE_MESSAGING_SENDER_ID not found',
        projectId: dotenv.env['FIREBASE_PROJECT_ID'] ?? 'FIREBASE_PROJECT_ID not found',
      );
    }
  }
}

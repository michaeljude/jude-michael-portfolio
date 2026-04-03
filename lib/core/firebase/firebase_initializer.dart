import 'package:firebase_core/firebase_core.dart';

abstract final class FirebaseInitializer {
  static Future<bool> tryInitialize() async {
    try {
      await Firebase.initializeApp();
      return true;
    } catch (_) {
      // For Flutter web, this typically means firebase options are not configured
      // yet (flutterfire configure not run). We keep the app bootable.
      return false;
    }
  }
}


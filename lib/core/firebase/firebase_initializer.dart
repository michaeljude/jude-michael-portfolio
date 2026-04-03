import 'package:firebase_core/firebase_core.dart';

import '../../firebase_options.dart';

abstract final class FirebaseInitializer {
  static Future<bool> tryInitialize() async {
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      return true;
    } catch (_) {
      return false;
    }
  }
}


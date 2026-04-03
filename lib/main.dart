import 'package:flutter/widgets.dart';

import 'app/app.dart';
import 'app/di/di.dart';
import 'app/router/app_router.dart';
import 'core/firebase/firebase_initializer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final firebaseReady = await FirebaseInitializer.tryInitialize();
  configureDependencies(firebaseReady: firebaseReady);
  final router = AppRouter();
  runApp(App(router: router));
}

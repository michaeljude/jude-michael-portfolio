import 'package:flutter/material.dart';

import '../core/constants/app_strings.dart';
import 'router/app_router.dart';
import 'theme/app_theme.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.router,
  });

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.materialAppTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      routerConfig: router.config(),
    );
  }
}


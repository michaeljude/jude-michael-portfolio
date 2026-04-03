import 'package:flutter_test/flutter_test.dart';

import 'package:portfolio_jude_michael_de_roma/app/app.dart';
import 'package:portfolio_jude_michael_de_roma/app/router/app_router.dart';
import 'package:portfolio_jude_michael_de_roma/core/constants/app_strings.dart';

void main() {
  testWidgets('App boots to home shell', (WidgetTester tester) async {
    await tester.pumpWidget(App(router: AppRouter()));
    await tester.pumpAndSettle();

    expect(find.text(AppStrings.heroName), findsWidgets);
  });
}

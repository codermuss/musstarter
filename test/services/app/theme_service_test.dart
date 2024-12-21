import 'package:flutter_test/flutter_test.dart';
import 'package:musstarter/app/app.locator.dart';
import 'package:musstarter/services/app/theme_service.dart';
import 'package:musstarter/ui/themes/theme_modes.dart';

import '../../helpers/test_helpers.dart';

void main() {
  group('ThemeServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());

    test('can be instantiated', () {
      expect(ThemeService(), isNotNull);
    });

    test('can change theme', () {
      final ThemeService themeService = ThemeService();
      themeService.toggleTheme(AppThemeMode.dark);
      expect(themeService.themeMode, AppThemeMode.dark);
    });
  });
}

import 'package:flutter/material.dart';
import 'package:musstarter/ui/themes/app_theme_colors.dart';

extension AppContext on BuildContext {
  ThemeData get _theme => Theme.of(this);
  AppThemeColors get palette => _theme.extension<AppThemeColors>()!;
  TextTheme get textTheme => _theme.textTheme;

  String? get getCurrentLocale => Localizations.localeOf(this).languageCode;
}

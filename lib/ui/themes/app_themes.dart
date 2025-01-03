import 'package:flutter/material.dart';
import 'package:musstarter/ui/themes/dark/dark_theme.dart';
import 'package:musstarter/ui/themes/light/light_theme.dart';

import 'brown/brown_theme.dart';

final class AppThemes {
  static ThemeData get lightTheme => LightTheme.themeData;
  static ThemeData get darkTheme => DarkTheme.themeData;
  static ThemeData get brownTheme => BrownTheme.themeData;
}

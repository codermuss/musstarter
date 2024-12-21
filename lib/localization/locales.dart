import 'package:flutter/material.dart';
import 'package:musstarter/utilities/constants/app_strings.dart';

enum Locales {
  en(Locale(AppStrings.en)),
  tr(Locale(AppStrings.tr));

  final Locale locale;
  const Locales(this.locale);
}

import 'package:flutter/material.dart';
import 'package:musstarter/app/app.locator.dart';
import 'package:musstarter/services/app/theme_service.dart';
import 'package:stacked/stacked.dart';

class MainViewmodel extends ReactiveViewModel with ListenableServiceMixin {
  /// MARK: - [Dependencies]
  final ThemeService _themeService = locator<ThemeService>();

  /// MARK: - [Getters & Setters]
  ThemeData get theme => _themeService.theme;

  @override
  List<ListenableServiceMixin> get listenableServices => [_themeService];
}

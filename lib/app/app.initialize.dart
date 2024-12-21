import 'dart:async';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:musstarter/app/app.bottomsheets.dart';
import 'package:musstarter/app/app.custom.locator.dart';
import 'package:musstarter/app/app.dialogs.dart';
import 'package:musstarter/app/app.locator.dart';
import 'package:musstarter/localization/app_localization.dart';
import 'package:musstarter/main.dart';

import '../services/app/hive_storage_service.dart';

final class AppInitialize {
  const AppInitialize._();
  static const AppInitialize instance = AppInitialize._();

  Future<void> run() async {
    await runZonedGuarded(_initialize, _onError);
  }

  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await Future.wait(
      [
        setupLocator(),
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge),
      ],
    );
    setupCustomLocator();
    setupDialogUi();
    setupBottomSheetUi();
    await locator<HiveStorageService>().init();
    runApp(AppLocalization(child: const MainApp()));
  }

  void _onError(Object error, StackTrace stack) {
    // TODO: Handle error
    if (kDebugMode) log(error.toString(), stackTrace: stack);
  }
}

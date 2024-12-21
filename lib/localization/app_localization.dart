import 'package:easy_localization/easy_localization.dart';
import 'package:musstarter/localization/locales.dart';
import 'package:musstarter/utilities/constants/app_strings.dart';

final class AppLocalization extends EasyLocalization {
  AppLocalization({super.key, required super.child})
      : super(
          supportedLocales: [Locales.tr.locale, Locales.en.locale],
          startLocale: Locales.tr.locale,
          fallbackLocale: Locales.tr.locale,
          path: AppStrings.languageAssetPath,
          useOnlyLangCode: true,
        );
}

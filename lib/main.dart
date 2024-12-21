import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:musstarter/app/app.initialize.dart';
import 'package:musstarter/app/app.router.dart';
import 'package:musstarter/main_viewmodel.dart';
import 'package:musstarter/utilities/constants/app_nums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async => await AppInitialize.instance.run();

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(AppNums.appWidth, AppNums.appHeight),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return ViewModelBuilder.reactive(
          viewModelBuilder: () => MainViewmodel(),
          builder: (context, viewModel, child) => MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.startupView,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorKey: StackedService.navigatorKey,
            theme: viewModel.theme,
            navigatorObservers: [StackedService.routeObserver],
          ),
        );
      },
    );
  }
}

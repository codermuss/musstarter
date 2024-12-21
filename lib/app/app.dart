import 'package:musstarter/services/api/auth_api_service.dart';
import 'package:musstarter/services/api/onboarding_api_service.dart';
import 'package:musstarter/services/app/encryption_service.dart';
import 'package:musstarter/services/app/hive_storage_service.dart';
import 'package:musstarter/services/app/theme_service.dart';
import 'package:musstarter/services/app/view_model_helper_service.dart';
import 'package:musstarter/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:musstarter/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:musstarter/ui/views/home/home_view.dart';
import 'package:musstarter/ui/views/onboarding/onboarding_view.dart';
import 'package:musstarter/ui/views/sign_in/sign_in_view.dart';
import 'package:musstarter/ui/views/sign_up/sign_up_view.dart';
import 'package:musstarter/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: OnboardingView),
    MaterialRoute(page: SignInView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ThemeService),
    LazySingleton(classType: OnboardingApiService),
    LazySingleton(classType: AuthApiService),
    LazySingleton(classType: HiveStorageService),
    LazySingleton(classType: EncryptionService),
    LazySingleton(classType: ViewModelHelperService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}

import 'package:musstarter/app/app.locator.dart';
import 'package:musstarter/app/app.router.dart';
import 'package:musstarter/mixin/viewmodel_supporter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../utilities/constants/app_strings.dart';

class StartupViewModel extends BaseViewModel with ViewModelSupporter {
  final _navigationService = locator<NavigationService>();

  Future runStartupLogic() async {
    if (await storageService.getData(AppStrings.accessToken) != null) {
      _navigationService.replaceWithHomeView();
      return;
    }

    _navigationService.replaceWithOnboardingView();
  }
}

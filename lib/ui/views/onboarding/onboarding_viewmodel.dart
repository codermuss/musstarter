import 'package:flutter/material.dart';
import 'package:musstarter/app/app.locator.dart';
import 'package:musstarter/mixin/viewmodel_supporter.dart';
import 'package:musstarter/models/response/onboarding/onboarding.dart';
import 'package:musstarter/services/api/onboarding_api_service.dart';
import 'package:musstarter/utilities/constants/app_strings.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.router.dart';

class OnboardingViewModel extends BaseViewModel with ViewModelSupporter {
  /// MARK: - [Dependencies]
  final OnboardingApiService _onboardingApiService = locator<OnboardingApiService>();

  /// MARK: - [Properties]
  final PageController pageController = PageController();
  int _currentIndex = 0;

  /// MARK: - [Getters & Setters]
  int get currentIndex => _currentIndex;
  final String onboardings = 'onboardings';

  /// MARK: - [Initializer]
  Future<void> init() async {
    await _getOnboardings();
  }

  /// MARK: - [Reset]

  /// MARK: - [Methods]
  Future<void> _getOnboardings() async {
    await handleViewStateByRequest(onboardings, _onboardingApiService.getOnboarding);
  }

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void nextPage() {
    _currentIndex++;
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }

  void previousPage() {
    if (_currentIndex > 0) {
      _currentIndex--;
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      notifyListeners();
    }
  }

  void onNext() {
    storageService.getData(AppStrings.accessToken);
    if (currentIndex == (getModel<List<Onboarding>>(onboardings)?.length ?? 1) - 1) {
      navigationService.clearStackAndShow(Routes.signUpView);
    } else {
      nextPage();
    }
  }

  void onSkip() => navigationService.clearStackAndShow(Routes.signUpView);
}

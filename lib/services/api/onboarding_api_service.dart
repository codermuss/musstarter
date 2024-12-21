import 'package:musstarter/mixin/api_service_supporter.dart';
import 'package:musstarter/models/base/base_response.dart';
import 'package:musstarter/models/response/onboarding/onboarding.dart';
import 'package:musstarter/utilities/constants/app_api_paths.dart';

class OnboardingApiService with ApiServiceSupporter {
  /// MARK: - [Methods]
  Future<BaseResponse<List<Onboarding>?>> getOnboarding() async {
    final response = await dioHttpClient.fetch<Onboarding, List<Onboarding>?>(
      path: AppApiPaths.onboarding,
      fromJson: Onboarding.fromJson,
    );
    return response;
  }
}

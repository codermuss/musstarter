import 'package:musstarter/mixin/api_service_supporter.dart';
import 'package:musstarter/models/request/auth/sign_in_request.dart';
import 'package:musstarter/models/request/auth/sign_up_request.dart';
import 'package:musstarter/models/response/auth/sign_in_response.dart';
import 'package:musstarter/models/response/auth/sign_up_response.dart';
import 'package:musstarter/utilities/constants/app_api_paths.dart';

import '../../models/base/base_response.dart';

class AuthApiService with ApiServiceSupporter {
  Future<BaseResponse<SignUpResponse>> signUp({required SignUpRequest request}) async => dioHttpClient.send<SignUpResponse, SignUpResponse>(
        path: AppApiPaths.signUp,
        fromJson: SignUpResponse.fromJson,
        data: request,
      );

  Future<BaseResponse<SignInResponse>> signIn({required SignInRequest request}) async => dioHttpClient.send<SignInResponse, SignInResponse>(
        path: AppApiPaths.signIn,
        fromJson: SignInResponse.fromJson,
        data: request,
      );
}

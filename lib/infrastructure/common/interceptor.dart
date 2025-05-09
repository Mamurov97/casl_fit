import 'dart:io';

import 'package:casl_fit/domain/common/data/user_data.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:dio/dio.dart';

import '../../application/app_manager/app_manager_cubit.dart';
import 'dio_exception.dart';

class DioInterceptor extends Interceptor {
  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    final checkUnauthorized = !err.requestOptions.headers.containsKey('check_token');
    if (err.response?.statusCode == 401) {
      UserData.token = "";
      AppManagerCubit.context?.go(Routes.signIn.path);
    }
    return handler.reject(
      DioExceptionX(
        requestOptions: err.requestOptions,
        statusCode: err.response?.statusCode,
        serverError: err.response?.data ?? {},
        errorType: err.type,
        checkUnauthorized: checkUnauthorized,
      ),
    );
  }

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    const nonToken = ["auth/verify/number", "auth/register", "auth/login", "auth/otp", "auth/otp/verify"];

    if (!nonToken.any((endPoint) => options.path.endsWith(endPoint))) {
      options.headers.addAll({HttpHeaders.authorizationHeader: 'Bearer ${UserData.token}'});
    }
    options.path = options.path.replaceAll(RegExp(r'/[{][A-Za-z_]+\}+'), '');
    return super.onRequest(options, handler);
  }
}

import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:casl_fit/application/app_manager/app_manager_cubit.dart';
import 'package:casl_fit/presentation/routes/entity/routes.dart';

class DioExceptionX extends DioException {
  DioExceptionX({
    required super.requestOptions,
    dynamic super.error,
    this.statusCode,
    this.serverError,
    this.checkUnauthorized = true,
    this.errorType = DioExceptionType.unknown,
  }) : super(type: errorType);

  final int? statusCode;
  final dynamic serverError;
  final bool checkUnauthorized;
  final DioExceptionType errorType;

  @override
  String toString() {
    if (error != null) {
      return error.toString();
    } else {
      return _getServerError();
    }
  }

  String _getServerError() {
    try {
      if (checkUnauthorized && statusCode == 401) {
        AppManagerCubit.context!.go(Routes.signIn.path);
        return '';
      } else {
        if (errorType.toString() == DioExceptionType.connectionError.toString()) {
          return 'Internet ulanmagan';
        }
        if (statusCode! >= 500) {
          return 'Server bilan aloqa yo\'q';
        } else {
          if (serverError['errors'] != null) {
            final Map<String, dynamic> message = serverError['errors'];
            return message[message.keys.first][0];
          } else if (serverError['message'] != null) {
            return serverError['message'];
          } else {
            return serverError.toString();
          }
        }
      }
    } catch (e) {
      return "${tr('errors.unknown')} \n $e";
    }
  }
}

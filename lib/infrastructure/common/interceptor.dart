import 'dart:convert';
import 'dart:io';

import 'package:casl_fit/domain/common/data/user_data.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

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
    if (UserData.deviceInfo.isEmpty) await getDeviceInfo();

    if (!nonToken.any((endPoint) => options.path.endsWith(endPoint))) {
      options.headers.addAll({
        HttpHeaders.authorizationHeader: 'Bearer ${UserData.token}',
        "device_type": Platform.isIOS ? "IOS" : "Android",
        "device-info": jsonEncode(UserData.deviceInfo),
      });
    }
    options.path = options.path.replaceAll(RegExp(r'/[{][A-Za-z_]+\}+'), '');
    return super.onRequest(options, handler);
  }

  Future<void> getDeviceInfo() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission();
    String? token;
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      // token = await messaging.getToken();
      print('Device Token: $token');
    } else {
      print('Push notificationga ruxsat berilmadi');
    }
    var deviceData = <String, dynamic>{};
    Map<String, dynamic> readAndroidBuildData(AndroidDeviceInfo build) {
      return <String, dynamic>{
        'device_system': 'android',
        'model': build.model,
        'device_id': build.id,
        'device_token': token,
        'is_physical_device': build.isPhysicalDevice,
      };
    }

    Map<String, dynamic> readIosDeviceInfo(IosDeviceInfo data) {
      return <String, dynamic>{
        'device_system': data.systemName,
        'model': data.model,
        'device_id': data.identifierForVendor,
        'device_token': token,
        'is_physical_device': data.isPhysicalDevice,
      };
    }

    try {
      deviceData = switch (defaultTargetPlatform) {
        TargetPlatform.android => readAndroidBuildData(await deviceInfoPlugin.androidInfo),
        TargetPlatform.iOS => readIosDeviceInfo(await deviceInfoPlugin.iosInfo),
        TargetPlatform.fuchsia => throw UnimplementedError(),
        TargetPlatform.linux => throw UnimplementedError(),
        TargetPlatform.macOS => throw UnimplementedError(),
        TargetPlatform.windows => throw UnimplementedError(),
      };
    } on PlatformException {
      deviceData = <String, dynamic>{'Error:': 'Failed to get platform version.'};
    }

    UserData.deviceInfo = deviceData;
  }
}

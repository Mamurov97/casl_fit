import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'interceptor.dart';

Dio createDio() {
  final dio = Dio();
  return dio
    ..interceptors.addAll(
      [
        DioInterceptor(),
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          compact: false,
          maxWidth: 90,
          enabled: true,
          filter: (options, args) {
            if (options.path.contains('/posts')) {
              return false;
            }
            return !args.isResponse || !args.hasUint8ListData;
          },
        ),
      ],
    )
    ..options = BaseOptions(
      baseUrl: 'http://10.100.104.104:9500/api/',
      // baseUrl: 'https://caslfit.uz/api/',
       // baseUrl: 'http://10.100.104.125:9500/api/',
     baseUrl: 'https://caslfit.uz/api/',
      headers: {HttpHeaders.acceptHeader: 'application/json'},
    );
}

const String baseUrlAppImage = "https://caslfit.uz/";

final dio = createDio();

import 'dart:io';

import 'package:dio/dio.dart';

import 'interceptor.dart';

Dio createDio() {
  final dio = Dio();
  return dio
    ..interceptors.addAll(
      [
        DioInterceptor(),
      ],
    )
    ..options = BaseOptions(
      baseUrl: 'http://10.100.104.125:9500/api/',
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
      },
    );
}

const String baseUrlAppImage = "http://10.100.104.125:9500/";

final dio = createDio();

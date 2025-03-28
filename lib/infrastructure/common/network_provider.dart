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
      baseUrl: 'http://api.kinder.vodiytaraqqiyot.uz/api/',
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
      },
    );
}

const String baseUrlAppImage = "http://api.kinder.vodiytaraqqiyot.uz/";

final dio = createDio();

import 'dart:async';

import 'package:casl_fit/application/tariff/tariff_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'application/app_manager/app_manager_cubit.dart';
import 'application/auth/init/auth_bloc.dart';
import 'domain/common/app_init.dart';
import 'presentation/app_widget.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(() async {
    await initializeApp();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    runApp(
      EasyLocalization(
        supportedLocales: const [
          // Locale('en'),
          Locale('uz'),
          // Locale('ru'),
        ],
        useFallbackTranslations: true,
        useOnlyLangCode: true,
        // fallbackLocale: const Locale('ru'),
        startLocale: const Locale('uz'),
        path: 'assets/translations',
        child: const MyApp(),
      ),
    );
  }, (error, stack) {
    if (kDebugMode) {
      print('stack=${stack.toString()}, error = ${error.toString()}');
    }
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppManagerCubit>(create: (context) => AppManagerCubit()..init()..checkVersion()),
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => TariffBloc()..add(const GetCurrentTariffs())),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => const AppWidget(),
      ),
    );
  }
}

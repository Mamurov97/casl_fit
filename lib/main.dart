import 'dart:async';
import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:casl_fit/application/home/home_bloc.dart';
import 'package:casl_fit/application/profile/profile_bloc.dart';
import 'package:casl_fit/application/tariff/tariff_bloc.dart';
import 'package:casl_fit/presentation/components/notification.dart';
import 'package:casl_fit/utils/screenshot_toggle/screenshot.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'application/app_manager/app_manager_cubit.dart';
import 'application/auth/init/auth_bloc.dart';
import 'application/check_version/check_version_cubit.dart';
import 'application/home/notification/notification_bloc.dart';
import 'domain/common/app_init.dart';
import 'firebase_options.dart';
import 'presentation/app_widget.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  await runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    await initializeApp();
    myScreenshotOn();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          icon: 'resource://drawable/applogo',
          // bu yerda small icon resursi,
          channelKey: 'basic_channel',
          channelName: 'Basic Notifications',
          channelDescription: 'Bildirishnomalar',
          defaultColor: Colors.white,
          ledColor: Colors.white,
          importance: NotificationImportance.High,
          channelShowBadge: true,
        ),
      ],
    );
    AwesomeNotifications().setGlobalBadgeCounter(0);
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('uz')],
        useFallbackTranslations: true,
        useOnlyLangCode: true,
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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });

    // Foreground holatda pushni tinglash
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (Platform.isIOS) {
        if (message.notification == null) {
          showAwesomeNotification(message);
        }
      } else {
        showAwesomeNotification(message);
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppManagerCubit>(create: (context) => AppManagerCubit()..init()..check()),
        BlocProvider(create: (context) => CheckVersionCubit()..checkVersion()),
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => NotificationBloc()),
        BlocProvider(
            create: (context) => ProfileBloc()
              ..add(GetUserBalance())
              ..add(GetProfileDataEvent())),
        BlocProvider(
            create: (context) => HomeBloc()
              ..add(const GetLiveCountUserEvent())
              ..add(const GetNotificationCountEvent())
              ..add(const HomeEvent.getDailyUserCount())),
        BlocProvider(
            create: (context) => TariffBloc()
              ..add(const GetCurrentTariffs())
              ..add(const GetTariffs())),
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

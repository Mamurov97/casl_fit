import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'entity/pages.dart';
import 'entity/routes.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.signIn.path,

  routes: <GoRoute>[
    ///auth
    GoRoute(
      name: Routes.signIn.name,
      path: Routes.signIn.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const SignInPage(),
      ),
    ),
    GoRoute(
      name: Routes.checkPasscode.name,
      path: Routes.checkPasscode.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const CheckPasscodePage(),
      ),
    ),
    GoRoute(
      name: Routes.createPasscode.name,
      path: Routes.createPasscode.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const SetPasscodePage(),
      ),
    ),

    ///bottom_navigation_bar
    GoRoute(
      name: Routes.qrCode.name,
      path: Routes.qrCode.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const QrPage(),
      ),
    ),
  ],
  // errorBuilder: (context, state) => const SizedBox(),
);

import 'package:casl_fit/utils/screenshot_toggle/screenshot.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../application/home/home_bloc.dart';
import '../../application/profile/profile_bloc.dart';
import '../../application/profile/weight_height/weight_height_bloc.dart';
import '../../application/qr_code/qr_code_bloc.dart';
import '../../domain/common/data/user_data.dart';
import '../../infrastructure/dto/models/tariff/tariff_model.dart';
import '../../infrastructure/services/shared_service.dart';
import '../components/navigation_helper.dart';
import '../pages/tariff/tariff_tabbar.dart';
import 'entity/custom_nav_bar.dart';
import 'entity/pages.dart';
import 'entity/routes.dart';

final controller = ScrollController();

Future<void> clearAndRoot() async {
  var pref = await SharedPrefService.initialize();
  var passCode = pref.passcode;
  pref.clear();
  pref.setPasscode(passCode);
  pref.setAuthStatus(true);
}

String? _redirects() {
  String? root;

  if (UserData.token.isEmpty) {
    clearAndRoot();
    root = Routes.signIn.path;
    return root;
  }

  return null;
}

String getInitialLocation() {
  final route = UserData.token.isEmpty
      ? Routes.signIn.path
      : UserData.passCodeStatus
          ? Routes.checkPassCode.path
          : Routes.setPassCode.path;

  return route;
}

final rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: getInitialLocation(),
  debugLogDiagnostics: false,
  navigatorKey: rootNavigatorKey,
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
        name: Routes.register.name,
        path: Routes.register.path,
        pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const RegisterPage(),
            ),
        routes: [
          GoRoute(
            name: Routes.privacyPolicy.name,
            path: Routes.privacyPolicy.path,
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const PrivacyPolicyPage(),
            ),
          ),
        ]),
    GoRoute(
      name: Routes.setPassCode.name,
      path: Routes.setPassCode.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const SetPasscodePage(),
      ),
    ),
    GoRoute(
      name: Routes.checkPassCode.name,
      path: Routes.checkPassCode.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: const CheckPasscodePage(),
      ),
    ),
    GoRoute(
      name: Routes.verify.name,
      path: Routes.verify.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey,
        child: VerifyPage(type: state.extra as String),
      ),
    ),

    ///bottom_navigation_bar
    GoRoute(
      path: Routes.root.path,
      name: Routes.root.name,
      redirect: (context, state) => _redirects(),
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigatorShell) {
            int screen = 0;

            return PopScope(
              canPop: false,
              onPopInvoked: (bool didPop) async {
                if (didPop) {
                  return;
                }
                if (screen == 0) {
                  final bool shouldPop = await NavigationHelper.onWillPop();
                  if (shouldPop) {
                    SystemNavigator.pop();
                  }
                } else {}
              },
              child: Container(
                color: AppTheme.colors.secondary,
                child: SafeArea(
                  top: false,
                  child: PersistentTabView.router(
                    tabs: tabs,
                    popActionScreens: PopActionScreensType.all,
                    navBarOverlap: const NavBarOverlap.full(),
                    onTabChanged: (index) {
                      if (index == 0) {
                        context.read<HomeBloc>().add(const HomeEvent.getLiveUserCount());
                        if (controller.hasClients) {
                          controller.jumpTo(0);
                        }
                      } else if (index == 4) {
                        context.read<ProfileBloc>().add(GetUserBalance());
                      }

                      if(index==2){
                        myScreenshotOff();
                      }else{
                        myScreenshotOn();
                      }
                    },
                    navBarBuilder: (navBarConfig) => CustomNavBar(navBarConfig: navBarConfig),
                    navigationShell: navigatorShell,
                  ),
                ),
              ),
            );
          },
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: Routes.home.name,
                  path: Routes.home.path,
                  redirect: (context, state) => _redirects(),
                  pageBuilder: (context, state) {
                    return MaterialPage<void>(key: state.pageKey, child: const HomePage());
                  },
                  routes: [
                    GoRoute(
                      name: Routes.notification.name,
                      path: Routes.notification.path,
                      redirect: (context, state) => _redirects(),
                      pageBuilder: (context, state) {
                        return MaterialPage<void>(key: state.pageKey, child: const NotificationPage());
                      },
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                    name: Routes.status.name,
                    path: Routes.status.path,
                    redirect: (context, state) => _redirects(),
                    pageBuilder: (context, state) {
                      return MaterialPage<void>(key: state.pageKey, child: const ComingSoonPage());
                    }),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: Routes.qrCode.name,
                  path: Routes.qrCode.path,
                  redirect: (context, state) => _redirects(),
                  pageBuilder: (context, state) => MaterialPage<void>(
                    key: state.pageKey,
                    child: BlocProvider(
                      create: (context) => QrCodeBloc()..add(GetQrCodeTokenEvent()),
                      child: const QrPage(),
                    ),
                  ),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  name: Routes.tariff.name,
                  path: Routes.tariff.path,
                  redirect: (context, state) => _redirects(),
                  routes: [
                    GoRoute(
                      name: Routes.allTariff.name,
                      path: Routes.allTariff.path,
                      redirect: (context, state) => _redirects(),
                      pageBuilder: (context, state) {
                        return MaterialPage<void>(key: state.pageKey, child: const AllTariffPage());
                      },
                      routes: [
                        GoRoute(
                          name: Routes.tariffDetail.name,
                          path: Routes.tariffDetail.path,
                          redirect: (context, state) => _redirects(),
                          pageBuilder: (context, state) {
                            return MaterialPage<void>(
                                key: state.pageKey,
                                child: TariffDetailPage(
                                  model: state.extra as Data,
                                ));
                          },
                        ),
                      ],
                    ),
                  ],
                  pageBuilder: (context, state) {
                    return MaterialPage<void>(
                      key: state.pageKey,
                      child: const TariffTabbar(),
                    );
                  },
                )
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                    name: Routes.profile.name,
                    path: Routes.profile.path,
                    redirect: (context, state) => _redirects(),
                    routes: [
                      GoRoute(
                          name: Routes.weightHeight.name,
                          path: Routes.weightHeight.path,
                          redirect: (context, state) => _redirects(),
                          pageBuilder: (context, state) {
                            return MaterialPage<void>(
                                key: state.pageKey,
                                child: BlocProvider(
                                  create: (context) => WeightHeightBloc()..add(GetWeightHeightEvent(weightHeightEnum: state.extra as WeightHeightEnum)),
                                  child: const WeightHeightPage(),
                                ));
                          }),
                    ],
                    pageBuilder: (context, state) {
                      return MaterialPage<void>(key: state.pageKey, child: const ProfilePage());
                    }),
              ],
            ),
          ],
        )
      ],
    ),
  ],
// errorBuilder: (context, state) => const SizedBox(),
);

final tabs = [
  PersistentRouterTabConfig(
    item: ItemConfig(
      icon: SvgPicture.asset(
        AppIcons.home,
        height: 20.sp,
        colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
      ),
      activeForegroundColor: AppTheme.colors.primary,
      inactiveForegroundColor: AppTheme.colors.white,
      inactiveIcon: SvgPicture.asset(
        AppIcons.home,
        height: 20.sp,
        colorFilter: ColorFilter.mode(AppTheme.colors.white, BlendMode.srcIn),
      ),
      title: 'root.home'.tr(),
      textStyle: AppTheme.data.textTheme.labelSmall!,
    ),
  ),
  PersistentRouterTabConfig(
    item: ItemConfig(
        icon: SvgPicture.asset(
          AppIcons.dumbbell,
          height: 20.sp,
          colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
        ),
        activeForegroundColor: AppTheme.colors.primary,
        inactiveForegroundColor: AppTheme.colors.white,
        inactiveIcon: SvgPicture.asset(
          AppIcons.dumbbell,
          height: 20.sp,
          colorFilter: ColorFilter.mode(AppTheme.colors.white, BlendMode.srcIn),
        ),
        title: 'root.status'.tr(),
        textStyle: AppTheme.data.textTheme.labelSmall!),
  ),
  PersistentRouterTabConfig(
    item: ItemConfig(
        icon: SvgPicture.asset(
          AppIcons.qrcode,
          height: 20.sp,
          colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
        ),
        activeForegroundColor: AppTheme.colors.primary,
        inactiveForegroundColor: AppTheme.colors.white,
        inactiveIcon: SvgPicture.asset(
          AppIcons.qrcode,
          height: 20.sp,
          colorFilter: ColorFilter.mode(AppTheme.colors.white, BlendMode.srcIn),
        ),
        title: 'root.qrcode'.tr(),
        textStyle: AppTheme.data.textTheme.labelSmall!),
  ),
  PersistentRouterTabConfig(
    item: ItemConfig(
        icon: SvgPicture.asset(
          AppIcons.program,
          height: 20.sp,
          colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
        ),
        activeForegroundColor: AppTheme.colors.primary,
        inactiveForegroundColor: AppTheme.colors.white,
        inactiveIcon: SvgPicture.asset(
          AppIcons.program,
          height: 20.sp,
          colorFilter: ColorFilter.mode(AppTheme.colors.white, BlendMode.srcIn),
        ),
        title: 'root.program'.tr(),
        textStyle: AppTheme.data.textTheme.labelSmall!),
  ),
  PersistentRouterTabConfig(
    item: ItemConfig(
        icon: SvgPicture.asset(
          AppIcons.profile,
          height: 20.sp,
          colorFilter: ColorFilter.mode(AppTheme.colors.primary, BlendMode.srcIn),
        ),
        activeForegroundColor: AppTheme.colors.primary,
        inactiveForegroundColor: AppTheme.colors.white,
        inactiveIcon: SvgPicture.asset(
          AppIcons.profile,
          height: 20.sp,
          colorFilter: ColorFilter.mode(AppTheme.colors.white, BlendMode.srcIn),
        ),
        title: 'root.profile'.tr(),
        textStyle: AppTheme.data.textTheme.labelSmall!),
  ),
];

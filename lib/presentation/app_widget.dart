import 'dart:ui' as ui;

import 'package:casl_fit/application/app_manager/app_manager_cubit.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';

import 'routes/coordinator.dart'; // router shu yerda

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppManagerCubit, AppManagerState>(
      builder: (context, state) {
        if (state is AppManagerLoading) {
          return const Directionality(
            textDirection: ui.TextDirection.ltr,
            child: CircularIndicator(),
          );
        } else if (state is AppManagerError) {
          return ErrorView(error: state.error);
        } else if (state is AppManagerInitial) {
          return OKToast(
            child: MaterialApp.router(
              title: 'CaslFit',
              theme: AppTheme.data,
              themeMode: AppTheme.themeMode,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              routeInformationParser: router.routeInformationParser,
              routeInformationProvider: router.routeInformationProvider,
              routerDelegate: router.routerDelegate,
              builder: (context, child) {
                /*final state = context.watch<AppManagerCubit>().state;

                if (state is AppCheckVersionSuccess&&!kDebugMode) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    final navigator = rootNavigatorKey.currentState;
                    if (navigator?.mounted ?? false) {
                      showDialog(
                        context: navigator!.context,
                        barrierDismissible: state.updateStatus != 'hard',
                        builder: (_) => const Material(
                          type: MaterialType.transparency,
                          child: UpdateAppDialog(status: 'hard'),
                        ),
                      );
                    }
                  });
                }*/

                return EasyLoading.init()(context, child);
              },
            ),
          );
        }
        return const Directionality(
          textDirection: ui.TextDirection.ltr,
          child: CircularIndicator(),
        );
      },
    );
  }
}

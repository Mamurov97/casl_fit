import 'package:bloc/bloc.dart';
import 'package:casl_fit/domain/common/data/user_data.dart';
import 'package:casl_fit/infrastructure/common/network_provider.dart';
import 'package:casl_fit/infrastructure/common/platform_info.dart';
import 'package:casl_fit/infrastructure/services/shared_service.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'app_manager_state.dart';

class AppManagerCubit extends Cubit<AppManagerState> {
  AppManagerCubit() : super(AppManagerLoading());

  static BuildContext? context;

  Future<void> init() async {
    emit(AppManagerLoading());
    try {
      await AppTheme.init();
      await ScreenSize.setSizes();

      PlatformInfo.init();

      final pref = await SharedPrefService.initialize();
 
      UserData.token = pref.getToken;
      UserData.authStatus = pref.isAuthorized;
      UserData.userId = pref.getUserId;
      UserData.name = pref.getName;
      UserData.image = pref.getImage;
      UserData.phone = pref.getPhone;
      UserData.guid = pref.getGuid;
      UserData.role = pref.getRole;

      emit(AppManagerInitial());
    } catch (e) {
      emit(AppManagerError(e.toString()));
    }
  }

  Future<void> checkVersion() async {
    emit(AppCheckVersionInitial());
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      String info = "ios";
      if (PlatformInfo.isIOS) {
        info = "ios";
      } else {
        info = "android";
      }
      Response response = await dio.post("auth/mobile-check-version", data: {"platform_type": info, "app_version": packageInfo.version});
      print("123234343453453");
      var result = response.data;
      emit(AppCheckVersionSuccess(result["result"]["update"], result["result"]["update_status"]));
    } catch (e) {
      print("errororororo");
      print(e.toString());
      emit(AppCheckVersionError(e.toString()));
    }
  }
}

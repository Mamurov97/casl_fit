import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../infrastructure/common/network_provider.dart';
import '../../infrastructure/common/platform_info.dart';

part 'check_version_state.dart';

class CheckVersionCubit extends Cubit<CheckVersionState> {
  CheckVersionCubit() : super(AppCheckVersionInitial());

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
      var result = response.data;
      List<String> features = (response.data['result']['news'] as List?)?.map((e) => e as String).toList()??[];
      emit(AppCheckVersionSuccess(result["result"]["update"], result["result"]["update_status"], features));
    } catch (e) {
      emit(AppCheckVersionError(e.toString()));
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:casl_fit/domain/common/data/user_data.dart';
import 'package:casl_fit/infrastructure/common/platform_info.dart';
import 'package:casl_fit/infrastructure/services/shared_service.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';

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
}

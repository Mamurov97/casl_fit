import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:casl_fit/domain/common/data/user_data.dart';
import 'package:casl_fit/infrastructure/common/platform_info.dart';
import 'package:casl_fit/infrastructure/services/shared_service.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';

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

      UserData.authStatus = pref.isAuthorized;
      UserData.name = pref.getName;
      UserData.branchName = pref.getBranchName;
      UserData.workerName = pref.getWorkerName;
      UserData.branchId = pref.getBranchId;
      UserData.workerId = pref.getWorkerId;
      UserData.phone = pref.getPhone;
      UserData.role = pref.getRole;
      UserData.token ="11|yMByFoVz9fl6AQZ30wPwwmx91dJIWkPgcEb5dnlwa51a16b8";

      emit(AppManagerInitial());
    } catch (e) {
      emit(AppManagerError(e.toString()));
    }
  }
}

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:casl_fit/domain/common/data/user_data.dart';
import 'package:casl_fit/infrastructure/common/network_provider.dart';
import 'package:casl_fit/infrastructure/common/platform_info.dart';
import 'package:casl_fit/infrastructure/services/shared_service.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

part 'app_manager_state.dart';

class AppManagerCubit extends Cubit<AppManagerState> {
  AppManagerCubit() : super(AppManagerLoading());

  static BuildContext? context;

  String generatePublicKey() {
    final random = Random.secure();
    final bytes = List<int>.generate(16, (_) => random.nextInt(256));
    return _bytesToHex(Uint8List.fromList(bytes));
  }

  String _bytesToHex(Uint8List bytes) {
    final buffer = StringBuffer();
    for (var byte in bytes) {
      buffer.write(byte.toRadixString(16).padLeft(2, '0'));
    }
    return buffer.toString();
  }

  Future<void> check() async {
    var secretKey = "6E2ftVB8Z7bXv1WqxX1E7gMZrXnGKUWEg";
    var secretMd5 = md5.convert(utf8.encode(secretKey));
    var publicKey = generatePublicKey();
    ApiMethods.key = publicKey;
    final id = md5.convert(utf8.encode("$secretMd5+$publicKey")).toString();

    ApiMethods.id = id;
  }

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
      UserData.passCodeStatus = pref.passcode.isNotEmpty;
      emit(AppManagerInitial());
    } catch (e) {
      emit(AppManagerError(e.toString()));
    }
  }
}

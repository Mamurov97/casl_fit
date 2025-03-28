import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:casl_fit/domain/common/data/user_data.dart';
import 'package:casl_fit/infrastructure/services/shared_service.dart';

import '../../../infrastructure/repository/auth/auth_repository.dart';

part 'init_auth_event.dart';

part 'init_auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<SignInEvent>(_signIn);
  }

  final _repo = AuthRepository();

  Future<void> _signIn(
    SignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(SignInLoading());

      final prefs = await SharedPrefService.initialize();
      final data = await _repo.signIn(
        phone: event.phone,
        password: event.password,
      );

      final String token = data['resoult']?['token'] ?? '';
      final String message = data['error']?['message'] ?? '';

      if (token.isNotEmpty) {
        UserData.token = token;
        final secondData = await _repo.me();
        final String name = secondData['resoult']?['name'] ?? '';
        final int branchId = secondData['resoult']?['branch_id'] ?? 0;
        final String branchName = secondData['resoult']?['branch_name'] ?? '';
        final int workerId = secondData['resoult']?['worker_id'] ?? 0;
        final String workerName = secondData['resoult']?['worker_name'] ?? '';
        final String phone = secondData['resoult']?['phone'] ?? '';
        final String role = secondData['resoult']?['role'] ?? '';
        final String message0 = secondData['error']?['message'] ?? '';
        if (message0.isEmpty) {
          UserData.name = name;
          UserData.branchId = branchId;
          UserData.branchName = branchName;
          UserData.workerId = workerId;
          UserData.workerName = workerName;
          UserData.phone = phone;
          UserData.role = role;
          prefs.setToken(token);
          prefs.setName(name);
          prefs.setBranchName(branchName);
          prefs.setWorkerName(workerName);
          prefs.setBranchId(branchId);
          prefs.setWorkerId(workerId);
          prefs.setPhone(phone);
          prefs.setRole(role);
          emit(SignInSuccess());
        } else {
          emit(SignInError(message0));
        }
      } else {
        emit(SignInError(message));
      }
    } catch (e) {
      emit(SignInError(e.toString()));
    }
  }
}

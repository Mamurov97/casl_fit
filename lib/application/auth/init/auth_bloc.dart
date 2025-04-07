import 'package:bloc/bloc.dart';
import 'package:casl_fit/domain/common/data/user_data.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/infrastructure/repository/auth/auth_repository.dart';
import 'package:casl_fit/infrastructure/services/shared_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    final repo = AuthRepository();

    //Telefon raqamni tekshirish
    on<CheckPhoneNumber>((event, emit) async {
      emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.loading, phoneNumber: event.phone));
      try {
        final response = await repo.verifyNumber(phone: event.phone);
        if (response['status'] == true) {
          emit(state.copyWith(authStatus: response['result']['page'].toString().toVerifyPhoneNumberStatus()));
        } else {
          emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.error, errorMessage: response['error']['message']));
        }
      } catch (e) {
        emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.error, errorMessage: 'errors.unknown'.tr()));
      }
    });

    //Telefon raqam o'chirilganida authStatusni initialga qaytarish
    on<ChangeAuthStatusEvent>((event, emit) async {
      emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.initial));
    });

    //Register page typeini o'zgartirish
    on<SetRegisterPageType>((event, emit) async {
      emit(state.copyWith(registerPageType: event.type));
    });

    //Login yoki parol xato bo'lsa loginStatusni initialga qaytarish
    on<ChangeLoginStatusEvent>((event, emit) async {
      emit(state.copyWith(loginStatus: BlocStatus.initial));
    });

    // OtpStatusni initialga qaytarish
    on<ChangeOtpStatusEvent>((event, emit) async {
      emit(state.copyWith(otpStatus: BlocStatus.initial));
    });

    // ResetPasswordStatusni initialga qaytarish
    on<ChangeResetPasswordStatusEvent>((event, emit) async {
      emit(state.copyWith(resetPasswordStatus: BlocStatus.initial));
    });
    on<PrivacyPolicyEvent>((event, emit) async {
      emit(state.copyWith(isPrivacyPolicy: event.isPrivacyPolicy));
    });
    // Login jarayonini boshlash
    on<LoginEvent>((event, emit) async {
      emit(state.copyWith(loginStatus: BlocStatus.loading));
      final prefs = await SharedPrefService.initialize();

      try {
        await repo.login(phone: event.phone, password: event.password).then((response) async {
          if (response['status'] == true) {
            final String token = response['result']['token'] ?? '';
            prefs.setToken(token);
            UserData.token = token;
            try {
              final responseMe = await repo.getMe();
              if (responseMe['error'] != 'Unauthorized') {
                final int userId = responseMe['user_id'] ?? 0;
                final String name = responseMe['name'] ?? '';
                final String image = responseMe['image'] ?? '';
                final String phone = responseMe['phone'] ?? '';
                final String guid = responseMe['guid'] ?? '';
                final String role = responseMe['role'] ?? '';
                UserData.userId = userId;
                UserData.name = name;
                UserData.image = image;
                UserData.phone = phone;
                UserData.guid = guid;
                UserData.role = role;
                prefs.setUserId(userId);
                prefs.setName(name);
                prefs.setImage(image);
                prefs.setPhone(phone);
                prefs.setGuid(guid);
                prefs.setRole(role);
                emit(state.copyWith(loginStatus: BlocStatus.success));
              }
            } catch (e) {
              emit(state.copyWith(loginStatus: BlocStatus.error, errorMessage: 'errors.unknown'.tr()));
            }
          } else {
            emit(state.copyWith(loginStatus: BlocStatus.error, errorMessage: 'errors.incorrect_password'.tr()));
          }
        });
      } catch (e) {
        emit(state.copyWith(loginStatus: BlocStatus.error, errorMessage: 'errors.unknown'.tr()));
      }
    });

    // Registratsiya jarayonini boshlash
    on<RegisterEvent>((event, emit) async {
      emit(state.copyWith(registerStatus: BlocStatus.loading));
      final prefs = await SharedPrefService.initialize();

      try {
        await repo.register(phone: state.phoneNumber ?? '', password: state.password ?? '', otpCode: event.otpCode).then((response) async {
          if (response['status'] == true) {
            final String token = response['result']['token'] ?? '';
            prefs.setToken(token);
            UserData.token = token;
            try {
              final responseMe = await repo.getMe();
              if (responseMe['error'] != 'Unauthorized') {
                final int userId = responseMe['user_id'] ?? 0;
                final String name = responseMe['name'] ?? '';
                final String image = responseMe['image'] ?? '';
                final String phone = responseMe['phone'] ?? '';
                final String guid = responseMe['guid'] ?? '';
                final String role = responseMe['role'] ?? '';
                UserData.userId = userId;
                UserData.name = name;
                UserData.image = image;
                UserData.phone = phone;
                UserData.guid = guid;
                UserData.role = role;
                prefs.setUserId(userId);
                prefs.setName(name);
                prefs.setImage(image);
                prefs.setPhone(phone);
                prefs.setGuid(guid);
                prefs.setRole(role);
                emit(state.copyWith(registerStatus: BlocStatus.success));
              }
            } catch (e) {
              emit(state.copyWith(registerStatus: BlocStatus.error, errorMessage: 'errors.unknown'.tr()));
            }
          } else {
            emit(state.copyWith(registerStatus: BlocStatus.error, errorMessage: 'errors.incorrect_password'.tr()));
          }
        });
      } catch (e) {
        emit(state.copyWith(registerStatus: BlocStatus.error, errorMessage: 'errors.unknown'.tr()));
      }
    });

    // OTP yuborish
    on<SendOtpEvent>((event, emit) async {
      emit(state.copyWith(otpStatus: BlocStatus.loading, password: event.password));
      try {
        final response = await repo.sendOtp(phone: state.phoneNumber ?? '');
        if (response['status'] == true) {
          emit(state.copyWith(otpStatus: BlocStatus.success));
        } else {
          emit(state.copyWith(otpStatus: BlocStatus.error, errorMessage: response['error']['message']));
        }
      } catch (e) {
        emit(state.copyWith(otpStatus: BlocStatus.error, errorMessage: 'errors.unknown'.tr()));
      }
    });

    // Parolni tiklash jarayonini boshlash
    on<PasswordRecoveryEvent>((event, emit) async {
      emit(state.copyWith(resetPasswordStatus: BlocStatus.loading));
      try {
        final response = await repo.resetPassword(password: event.password, otpCode: event.otpCode, phone: event.phone);
        if (response['status'] == true) {
          emit(state.copyWith(resetPasswordStatus: BlocStatus.success));
        } else {
          emit(state.copyWith(resetPasswordStatus: BlocStatus.error, errorMessage: response['error']['message']));
        }
      } catch (e) {
        emit(state.copyWith(resetPasswordStatus: BlocStatus.error, errorMessage: 'errors.unknown'.tr()));
      }
    });
  }
}

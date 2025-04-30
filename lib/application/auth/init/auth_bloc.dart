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
        emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.error, errorMessage: e.toString()));
      }
    });

    //Telefon raqam o'chirilganida authStatusni initialga qaytarish
    on<ChangeAuthStatusEvent>((event, emit) async {
      emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.initial));
    });

    // OtpStatusni initialga qaytarish
    on<ChangeOtpStatusEvent>((event, emit) async {
      emit(state.copyWith(otpStatus: BlocStatus.initial));
    });

    // OtpVerifyStatusni initialga qaytarish
    on<ChangeOtpVerifyStatusEvent>((event, emit) async {
      emit(state.copyWith(otpVerifyStatus: BlocStatus.initial));
    });

    // OTP yuborish
    on<SendOtpEvent>((event, emit) async {
      emit(state.copyWith(otpStatus: BlocStatus.loading, phoneNumber: state.phoneNumber));
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

    on<SetRegisterData>((event, emit) {
      emit(state.copyWith(fullName: event.name, birthday: event.birthday));
      add(const SendOtpEvent());
    });

    // Login jarayonini boshlash
    on<VerifyOtpEvent>((event, emit) async {
      emit(state.copyWith(otpVerifyStatus: BlocStatus.loading));
      final prefs = await SharedPrefService.initialize();

      try {
        await repo.verifyOtp(phone: state.phoneNumber ?? '', otpCode: event.otpCode).then((response) async {
          if (response['status'] == true) {
            final String token = response['result']['token'] ?? '';
            prefs.setToken(token);
            UserData.token = token;
            try {
              final responseMe = await repo.getMe();
              if (responseMe['error'] != 'Unauthorized') {
                final int userId = responseMe["result"]['user_id'] ?? 0;
                final String name = responseMe["result"]['name'] ?? '';
                final String image = responseMe["result"]['image'] ?? '';
                final String phone = responseMe["result"]['phone'] ?? '';
                final String guid = responseMe["result"]['guid'] ?? '';
                final String role = responseMe["result"]['role'] ?? '';
                UserData.userId = userId;
                UserData.name = name;
                UserData.image = image;
                UserData.phone = phone;
                UserData.guid = guid;
                UserData.role = role;
                UserData.authStatus = true;
                prefs.setUserId(userId);
                prefs.setName(name);
                prefs.setImage(image);
                prefs.setPhone(phone);
                prefs.setGuid(guid);
                prefs.setRole(role);
                prefs.setAuthStatus(true);
                emit(state.copyWith(otpVerifyStatus: BlocStatus.success));
              }
            } catch (e) {
              emit(state.copyWith(otpVerifyStatus: BlocStatus.error, errorMessage: e.toString()));
            }
          } else {
            emit(state.copyWith(otpVerifyStatus: BlocStatus.error, errorMessage: 'errors.incorrect_password'.tr()));
          }
        });
      } catch (e) {
        emit(state.copyWith(otpVerifyStatus: BlocStatus.error, errorMessage: e.toString()));
      }
    });

    // Registratsiya jarayonini boshlash
    on<RegisterEvent>((event, emit) async {
      emit(state.copyWith(registerStatus: BlocStatus.loading));
      final prefs = await SharedPrefService.initialize();

      try {
        await repo.register(phone: state.phoneNumber ?? '', data: {"name": state.fullName ?? "", "date_birthday": state.birthday ?? ""}, otpCode: event.otpCode).then((response) async {
          if (response['status'] == true) {
            final String token = response['result']['token'] ?? '';
            prefs.setToken(token);
            UserData.token = token;
            try {
              final responseMe = await repo.getMe();
              if (responseMe['error'] != 'Unauthorized') {
                final int userId = responseMe["result"]['user_id'] ?? 0;
                final String name = responseMe["result"]['name'] ?? '';
                final String image = responseMe["result"]['image'] ?? '';
                final String phone = responseMe["result"]['phone'] ?? '';
                final String guid = responseMe["result"]['guid'] ?? '';
                final String role = responseMe["result"]['role'] ?? '';
                UserData.userId = userId;
                UserData.name = name;
                UserData.image = image;
                UserData.phone = phone;
                UserData.guid = guid;
                UserData.role = role;
                UserData.authStatus = true;
                prefs.setUserId(userId);
                prefs.setName(name);
                prefs.setImage(image);
                prefs.setPhone(phone);
                prefs.setGuid(guid);
                prefs.setRole(role);
                prefs.setAuthStatus(true);
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

    // // ResetPasswordStatusni initialga qaytarish
    // on<ChangeResetPasswordStatusEvent>((event, emit) async {
    //   emit(state.copyWith(resetPasswordStatus: BlocStatus.initial));
    // });
    // on<PrivacyPolicyEvent>((event, emit) async {
    //   emit(state.copyWith(isPrivacyPolicy: event.isPrivacyPolicy));
    // });

    // // Parolni tiklash jarayonini boshlash
    // on<PasswordRecoveryEvent>((event, emit) async {
    //   emit(state.copyWith(resetPasswordStatus: BlocStatus.loading));
    //   try {
    //     final response = await repo.resetPassword(password: event.password, otpCode: event.otpCode, phone: event.phone);
    //     if (response['status'] == true) {
    //       emit(state.copyWith(resetPasswordStatus: BlocStatus.success));
    //     } else {
    //       emit(state.copyWith(resetPasswordStatus: BlocStatus.error, errorMessage: response['error']['message']));
    //     }
    //   } catch (e) {
    //     emit(state.copyWith(resetPasswordStatus: BlocStatus.error, errorMessage: 'errors.unknown'.tr()));
    //   }
    // });

    // //Register page typeini o'zgartirish
    // on<SetRegisterPageType>((event, emit) async {
    //   emit(state.copyWith(registerPageType: event.type));
    // });
    //
    // //Login yoki parol xato bo'lsa loginStatusni initialga qaytarish
    // on<ChangeLoginStatusEvent>((event, emit) async {
    //   emit(state.copyWith(loginStatus: BlocStatus.initial));
    // });
  }
}

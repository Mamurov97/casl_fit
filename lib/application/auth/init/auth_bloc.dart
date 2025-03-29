import 'package:bloc/bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/infrastructure/repository/auth/auth_repository.dart';
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
      emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.loading));
      try {
        final response = await repo.verifyNumber(phone: event.phone);
        if (response['status'] == true) {
          emit(state.copyWith(authStatus: response['result']['page'].toString().toVerifyPhoneNumberStatus()));
          print(state.authStatus);
        } else {
          emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.error, errorMessage: response['error']['message']));
        }
      } catch (e) {
        print(e.toString());
        emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.error, errorMessage: 'errors.unknown'.tr()));
      }
    });

    //Telefon raqam o'chirilganida authStatusni initialga qaytarish
    on<ChangeAuthStatusEvent>((event, emit) async {
      emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.initial));
    });

    // Login jarayonini boshlash
    on<LoginEvent>((event, emit) async {
      emit(state.copyWith(loginStatus: BlocStatus.loading));
      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(loginStatus: BlocStatus.success));
      // emit(state.copyWith(loginStatus: BlocStatus.error, errorMessage: 'errors.unknown'.tr()));
    });

    // Parolni tiklash jarayonini boshlash
    on<PasswordRecoveryEvent>((event, emit) async {
      emit(state.copyWith(otpStatus: BlocStatus.loading));

      emit(state.copyWith(otpStatus: BlocStatus.success));
      // emit(state.copyWith(otpStatus: BlocStatus.error, errorMessage: ));
    });

    // OTP yuborish
    on<SendOtpEvent>((event, emit) async {
      emit(state.copyWith(otpStatus: BlocStatus.loading));

      emit(state.copyWith(otpStatus: BlocStatus.success));
      // emit(state.copyWith(otpStatus: BlocStatus.error, errorMessage: ));
    });

    // OTPni tekshirish
    on<VerifyOtpEvent>((event, emit) async {
      emit(state.copyWith(otpVerifyStatus: BlocStatus.loading));

      emit(state.copyWith(otpVerifyStatus: BlocStatus.success));
      // emit(state.copyWith(otpVerifyStatus: BlocStatus.error, errorMessage: ));
    });
  }
}

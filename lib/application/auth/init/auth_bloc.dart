import 'package:bloc/bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    //Telefon raqamni tekshirish
    on<CheckPhoneNumber>((event, emit) async {
      emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.loading));
      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.login));
      // emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.register));
      // emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.notFound));
      // emit(state.copyWith(authStatus: VerifyPhoneNumberStatus.error, errorMessage: 'errors.unknown'.tr()));
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

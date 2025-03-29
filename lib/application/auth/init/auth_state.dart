part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required VerifyPhoneNumberStatus authStatus,
    required BlocStatus loginStatus,
    required BlocStatus registerStatus,
    required BlocStatus otpStatus,
    required BlocStatus otpVerifyStatus,
    String? errorMessage,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
    authStatus: VerifyPhoneNumberStatus.initial,
    loginStatus: BlocStatus.initial,
    registerStatus: BlocStatus.initial,
    otpStatus: BlocStatus.initial,
    otpVerifyStatus: BlocStatus.initial,
  );
}

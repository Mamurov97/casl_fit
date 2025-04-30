part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    String? phoneNumber,
    String? fullName,
    String? birthday,
    required VerifyPhoneNumberStatus authStatus,
    required BlocStatus otpStatus,
    required BlocStatus registerStatus,
    required BlocStatus otpVerifyStatus,
    String? errorMessage,
    // required BlocStatus loginStatus,
    // required BlocStatus resetPasswordStatus,
    // bool? isPrivacyPolicy,
    // String? password,
    // String? registerPageType,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        authStatus: VerifyPhoneNumberStatus.initial,
        registerStatus: BlocStatus.initial,
        otpStatus: BlocStatus.initial,
        otpVerifyStatus: BlocStatus.initial,
        // loginStatus: BlocStatus.initial,
        // resetPasswordStatus: BlocStatus.initial,
      );
}

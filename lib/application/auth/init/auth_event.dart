part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkPhoneNumber({
    required String phone,
  }) = CheckPhoneNumber;

  const factory AuthEvent.changeAuthStatusEvent() = ChangeAuthStatusEvent;

  const factory AuthEvent.login({
    required String phone,
    required String password,
  }) = LoginEvent;

  const factory AuthEvent.passwordRecovery({
    required String phone,
    required String password,
    required String otpCode,
  }) = PasswordRecoveryEvent;

  const factory AuthEvent.sendOtp({
    required String phone,
  }) = SendOtpEvent;

  const factory AuthEvent.verifyOtp({
    required String phone,
    required int otpCode,
  }) = VerifyOtpEvent;
}

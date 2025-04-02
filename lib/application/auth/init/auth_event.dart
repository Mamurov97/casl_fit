part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkPhoneNumber({
    required String phone,
  }) = CheckPhoneNumber;

  const factory AuthEvent.changeAuthStatusEvent() = ChangeAuthStatusEvent;

  const factory AuthEvent.changeLoginStatusEvent() = ChangeLoginStatusEvent;

  const factory AuthEvent.changeOtpStatusEvent() = ChangeOtpStatusEvent;

  const factory AuthEvent.changeResetPasswordStatusEvent() = ChangeResetPasswordStatusEvent;

  const factory AuthEvent.setRegisterPageTypeEvent({required String type}) = SetRegisterPageType;

  const factory AuthEvent.login({required String phone, required String password}) = LoginEvent;

  const factory AuthEvent.register({required String otpCode}) = RegisterEvent;

  const factory AuthEvent.passwordRecovery({required String otpCode}) = PasswordRecoveryEvent;

  const factory AuthEvent.sendOtp({required String password}) = SendOtpEvent;

  const factory AuthEvent.verifyOtp({required int otpCode}) = VerifyOtpEvent;
}

part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkPhoneNumber({required String phone}) = CheckPhoneNumber;

  const factory AuthEvent.sendOtp() = SendOtpEvent;

  const factory AuthEvent.verifyOtp({required String otpCode}) = VerifyOtpEvent;

  const factory AuthEvent.register({required String otpCode}) = RegisterEvent;

  const factory AuthEvent.changeAuthStatusEvent() = ChangeAuthStatusEvent;

  const factory AuthEvent.changeOtpVerifyStatusEvent() = ChangeOtpVerifyStatusEvent;

  const factory AuthEvent.changeOtpStatusEvent() = ChangeOtpStatusEvent;

  const factory AuthEvent.setRegisterData({required String name, required String birthday}) = SetRegisterData;
// const factory AuthEvent.isPrivacyPolicy({required bool isPrivacyPolicy}) = PrivacyPolicyEvent;
// const factory AuthEvent.login({required String phone, required String password}) = LoginEvent;
// const factory AuthEvent.changeLoginStatusEvent() = ChangeLoginStatusEvent;
// const factory AuthEvent.passwordRecovery({required String phone, required String password, required String otpCode}) = PasswordRecoveryEvent;
// const factory AuthEvent.changeResetPasswordStatusEvent() = ChangeResetPasswordStatusEvent;
// const factory AuthEvent.setRegisterPageTypeEvent({required String type}) = SetRegisterPageType;
}

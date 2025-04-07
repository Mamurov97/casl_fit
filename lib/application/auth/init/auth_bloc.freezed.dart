// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckPhoneNumberImplCopyWith<$Res> {
  factory _$$CheckPhoneNumberImplCopyWith(_$CheckPhoneNumberImpl value,
          $Res Function(_$CheckPhoneNumberImpl) then) =
      __$$CheckPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$CheckPhoneNumberImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckPhoneNumberImpl>
    implements _$$CheckPhoneNumberImplCopyWith<$Res> {
  __$$CheckPhoneNumberImplCopyWithImpl(_$CheckPhoneNumberImpl _value,
      $Res Function(_$CheckPhoneNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$CheckPhoneNumberImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckPhoneNumberImpl implements CheckPhoneNumber {
  const _$CheckPhoneNumberImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthEvent.checkPhoneNumber(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPhoneNumberImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPhoneNumberImplCopyWith<_$CheckPhoneNumberImpl> get copyWith =>
      __$$CheckPhoneNumberImplCopyWithImpl<_$CheckPhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) {
    return checkPhoneNumber(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) {
    return checkPhoneNumber?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (checkPhoneNumber != null) {
      return checkPhoneNumber(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) {
    return checkPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) {
    return checkPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (checkPhoneNumber != null) {
      return checkPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class CheckPhoneNumber implements AuthEvent {
  const factory CheckPhoneNumber({required final String phone}) =
      _$CheckPhoneNumberImpl;

  String get phone;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckPhoneNumberImplCopyWith<_$CheckPhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAuthStatusEventImplCopyWith<$Res> {
  factory _$$ChangeAuthStatusEventImplCopyWith(
          _$ChangeAuthStatusEventImpl value,
          $Res Function(_$ChangeAuthStatusEventImpl) then) =
      __$$ChangeAuthStatusEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeAuthStatusEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeAuthStatusEventImpl>
    implements _$$ChangeAuthStatusEventImplCopyWith<$Res> {
  __$$ChangeAuthStatusEventImplCopyWithImpl(_$ChangeAuthStatusEventImpl _value,
      $Res Function(_$ChangeAuthStatusEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeAuthStatusEventImpl implements ChangeAuthStatusEvent {
  const _$ChangeAuthStatusEventImpl();

  @override
  String toString() {
    return 'AuthEvent.changeAuthStatusEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAuthStatusEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) {
    return changeAuthStatusEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) {
    return changeAuthStatusEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (changeAuthStatusEvent != null) {
      return changeAuthStatusEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) {
    return changeAuthStatusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) {
    return changeAuthStatusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (changeAuthStatusEvent != null) {
      return changeAuthStatusEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeAuthStatusEvent implements AuthEvent {
  const factory ChangeAuthStatusEvent() = _$ChangeAuthStatusEventImpl;
}

/// @nodoc
abstract class _$$ChangeLoginStatusEventImplCopyWith<$Res> {
  factory _$$ChangeLoginStatusEventImplCopyWith(
          _$ChangeLoginStatusEventImpl value,
          $Res Function(_$ChangeLoginStatusEventImpl) then) =
      __$$ChangeLoginStatusEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeLoginStatusEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeLoginStatusEventImpl>
    implements _$$ChangeLoginStatusEventImplCopyWith<$Res> {
  __$$ChangeLoginStatusEventImplCopyWithImpl(
      _$ChangeLoginStatusEventImpl _value,
      $Res Function(_$ChangeLoginStatusEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeLoginStatusEventImpl implements ChangeLoginStatusEvent {
  const _$ChangeLoginStatusEventImpl();

  @override
  String toString() {
    return 'AuthEvent.changeLoginStatusEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLoginStatusEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) {
    return changeLoginStatusEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) {
    return changeLoginStatusEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (changeLoginStatusEvent != null) {
      return changeLoginStatusEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) {
    return changeLoginStatusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) {
    return changeLoginStatusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (changeLoginStatusEvent != null) {
      return changeLoginStatusEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeLoginStatusEvent implements AuthEvent {
  const factory ChangeLoginStatusEvent() = _$ChangeLoginStatusEventImpl;
}

/// @nodoc
abstract class _$$ChangeOtpStatusEventImplCopyWith<$Res> {
  factory _$$ChangeOtpStatusEventImplCopyWith(_$ChangeOtpStatusEventImpl value,
          $Res Function(_$ChangeOtpStatusEventImpl) then) =
      __$$ChangeOtpStatusEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeOtpStatusEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeOtpStatusEventImpl>
    implements _$$ChangeOtpStatusEventImplCopyWith<$Res> {
  __$$ChangeOtpStatusEventImplCopyWithImpl(_$ChangeOtpStatusEventImpl _value,
      $Res Function(_$ChangeOtpStatusEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeOtpStatusEventImpl implements ChangeOtpStatusEvent {
  const _$ChangeOtpStatusEventImpl();

  @override
  String toString() {
    return 'AuthEvent.changeOtpStatusEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeOtpStatusEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) {
    return changeOtpStatusEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) {
    return changeOtpStatusEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (changeOtpStatusEvent != null) {
      return changeOtpStatusEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) {
    return changeOtpStatusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) {
    return changeOtpStatusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (changeOtpStatusEvent != null) {
      return changeOtpStatusEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeOtpStatusEvent implements AuthEvent {
  const factory ChangeOtpStatusEvent() = _$ChangeOtpStatusEventImpl;
}

/// @nodoc
abstract class _$$ChangeResetPasswordStatusEventImplCopyWith<$Res> {
  factory _$$ChangeResetPasswordStatusEventImplCopyWith(
          _$ChangeResetPasswordStatusEventImpl value,
          $Res Function(_$ChangeResetPasswordStatusEventImpl) then) =
      __$$ChangeResetPasswordStatusEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeResetPasswordStatusEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChangeResetPasswordStatusEventImpl>
    implements _$$ChangeResetPasswordStatusEventImplCopyWith<$Res> {
  __$$ChangeResetPasswordStatusEventImplCopyWithImpl(
      _$ChangeResetPasswordStatusEventImpl _value,
      $Res Function(_$ChangeResetPasswordStatusEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeResetPasswordStatusEventImpl
    implements ChangeResetPasswordStatusEvent {
  const _$ChangeResetPasswordStatusEventImpl();

  @override
  String toString() {
    return 'AuthEvent.changeResetPasswordStatusEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeResetPasswordStatusEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) {
    return changeResetPasswordStatusEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) {
    return changeResetPasswordStatusEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (changeResetPasswordStatusEvent != null) {
      return changeResetPasswordStatusEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) {
    return changeResetPasswordStatusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) {
    return changeResetPasswordStatusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (changeResetPasswordStatusEvent != null) {
      return changeResetPasswordStatusEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeResetPasswordStatusEvent implements AuthEvent {
  const factory ChangeResetPasswordStatusEvent() =
      _$ChangeResetPasswordStatusEventImpl;
}

/// @nodoc
abstract class _$$SetRegisterPageTypeImplCopyWith<$Res> {
  factory _$$SetRegisterPageTypeImplCopyWith(_$SetRegisterPageTypeImpl value,
          $Res Function(_$SetRegisterPageTypeImpl) then) =
      __$$SetRegisterPageTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$SetRegisterPageTypeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetRegisterPageTypeImpl>
    implements _$$SetRegisterPageTypeImplCopyWith<$Res> {
  __$$SetRegisterPageTypeImplCopyWithImpl(_$SetRegisterPageTypeImpl _value,
      $Res Function(_$SetRegisterPageTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$SetRegisterPageTypeImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetRegisterPageTypeImpl implements SetRegisterPageType {
  const _$SetRegisterPageTypeImpl({required this.type});

  @override
  final String type;

  @override
  String toString() {
    return 'AuthEvent.setRegisterPageTypeEvent(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetRegisterPageTypeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetRegisterPageTypeImplCopyWith<_$SetRegisterPageTypeImpl> get copyWith =>
      __$$SetRegisterPageTypeImplCopyWithImpl<_$SetRegisterPageTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) {
    return setRegisterPageTypeEvent(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) {
    return setRegisterPageTypeEvent?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (setRegisterPageTypeEvent != null) {
      return setRegisterPageTypeEvent(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) {
    return setRegisterPageTypeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) {
    return setRegisterPageTypeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (setRegisterPageTypeEvent != null) {
      return setRegisterPageTypeEvent(this);
    }
    return orElse();
  }
}

abstract class SetRegisterPageType implements AuthEvent {
  const factory SetRegisterPageType({required final String type}) =
      _$SetRegisterPageTypeImpl;

  String get type;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetRegisterPageTypeImplCopyWith<_$SetRegisterPageTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
          _$LoginEventImpl value, $Res Function(_$LoginEventImpl) then) =
      __$$LoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String password});
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
      _$LoginEventImpl _value, $Res Function(_$LoginEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$LoginEventImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventImpl implements LoginEvent {
  const _$LoginEventImpl({required this.phone, required this.password});

  @override
  final String phone;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      __$$LoginEventImplCopyWithImpl<_$LoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) {
    return login(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) {
    return login?.call(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(phone, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements AuthEvent {
  const factory LoginEvent(
      {required final String phone,
      required final String password}) = _$LoginEventImpl;

  String get phone;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterEventImplCopyWith<$Res> {
  factory _$$RegisterEventImplCopyWith(
          _$RegisterEventImpl value, $Res Function(_$RegisterEventImpl) then) =
      __$$RegisterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode});
}

/// @nodoc
class __$$RegisterEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterEventImpl>
    implements _$$RegisterEventImplCopyWith<$Res> {
  __$$RegisterEventImplCopyWithImpl(
      _$RegisterEventImpl _value, $Res Function(_$RegisterEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_$RegisterEventImpl(
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterEventImpl implements RegisterEvent {
  const _$RegisterEventImpl({required this.otpCode});

  @override
  final String otpCode;

  @override
  String toString() {
    return 'AuthEvent.register(otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterEventImpl &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterEventImplCopyWith<_$RegisterEventImpl> get copyWith =>
      __$$RegisterEventImplCopyWithImpl<_$RegisterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) {
    return register(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) {
    return register?.call(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegisterEvent implements AuthEvent {
  const factory RegisterEvent({required final String otpCode}) =
      _$RegisterEventImpl;

  String get otpCode;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterEventImplCopyWith<_$RegisterEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordRecoveryEventImplCopyWith<$Res> {
  factory _$$PasswordRecoveryEventImplCopyWith(
          _$PasswordRecoveryEventImpl value,
          $Res Function(_$PasswordRecoveryEventImpl) then) =
      __$$PasswordRecoveryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String password, String otpCode});
}

/// @nodoc
class __$$PasswordRecoveryEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordRecoveryEventImpl>
    implements _$$PasswordRecoveryEventImplCopyWith<$Res> {
  __$$PasswordRecoveryEventImplCopyWithImpl(_$PasswordRecoveryEventImpl _value,
      $Res Function(_$PasswordRecoveryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? password = null,
    Object? otpCode = null,
  }) {
    return _then(_$PasswordRecoveryEventImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordRecoveryEventImpl implements PasswordRecoveryEvent {
  const _$PasswordRecoveryEventImpl(
      {required this.phone, required this.password, required this.otpCode});

  @override
  final String phone;
  @override
  final String password;
  @override
  final String otpCode;

  @override
  String toString() {
    return 'AuthEvent.passwordRecovery(phone: $phone, password: $password, otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordRecoveryEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, password, otpCode);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordRecoveryEventImplCopyWith<_$PasswordRecoveryEventImpl>
      get copyWith => __$$PasswordRecoveryEventImplCopyWithImpl<
          _$PasswordRecoveryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) {
    return passwordRecovery(phone, password, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) {
    return passwordRecovery?.call(phone, password, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (passwordRecovery != null) {
      return passwordRecovery(phone, password, otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) {
    return passwordRecovery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) {
    return passwordRecovery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (passwordRecovery != null) {
      return passwordRecovery(this);
    }
    return orElse();
  }
}

abstract class PasswordRecoveryEvent implements AuthEvent {
  const factory PasswordRecoveryEvent(
      {required final String phone,
      required final String password,
      required final String otpCode}) = _$PasswordRecoveryEventImpl;

  String get phone;
  String get password;
  String get otpCode;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordRecoveryEventImplCopyWith<_$PasswordRecoveryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOtpEventImplCopyWith<$Res> {
  factory _$$SendOtpEventImplCopyWith(
          _$SendOtpEventImpl value, $Res Function(_$SendOtpEventImpl) then) =
      __$$SendOtpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$SendOtpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendOtpEventImpl>
    implements _$$SendOtpEventImplCopyWith<$Res> {
  __$$SendOtpEventImplCopyWithImpl(
      _$SendOtpEventImpl _value, $Res Function(_$SendOtpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$SendOtpEventImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOtpEventImpl implements SendOtpEvent {
  const _$SendOtpEventImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.sendOtp(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpEventImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpEventImplCopyWith<_$SendOtpEventImpl> get copyWith =>
      __$$SendOtpEventImplCopyWithImpl<_$SendOtpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) {
    return sendOtp(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) {
    return sendOtp?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class SendOtpEvent implements AuthEvent {
  const factory SendOtpEvent({required final String password}) =
      _$SendOtpEventImpl;

  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOtpEventImplCopyWith<_$SendOtpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpEventImplCopyWith<$Res> {
  factory _$$VerifyOtpEventImplCopyWith(_$VerifyOtpEventImpl value,
          $Res Function(_$VerifyOtpEventImpl) then) =
      __$$VerifyOtpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int otpCode});
}

/// @nodoc
class __$$VerifyOtpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpEventImpl>
    implements _$$VerifyOtpEventImplCopyWith<$Res> {
  __$$VerifyOtpEventImplCopyWithImpl(
      _$VerifyOtpEventImpl _value, $Res Function(_$VerifyOtpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_$VerifyOtpEventImpl(
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VerifyOtpEventImpl implements VerifyOtpEvent {
  const _$VerifyOtpEventImpl({required this.otpCode});

  @override
  final int otpCode;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpEventImpl &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpEventImplCopyWith<_$VerifyOtpEventImpl> get copyWith =>
      __$$VerifyOtpEventImplCopyWithImpl<_$VerifyOtpEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) {
    return verifyOtp(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) {
    return verifyOtp?.call(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtpEvent implements AuthEvent {
  const factory VerifyOtpEvent({required final int otpCode}) =
      _$VerifyOtpEventImpl;

  int get otpCode;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpEventImplCopyWith<_$VerifyOtpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PrivacyPolicyEventImplCopyWith<$Res> {
  factory _$$PrivacyPolicyEventImplCopyWith(_$PrivacyPolicyEventImpl value,
          $Res Function(_$PrivacyPolicyEventImpl) then) =
      __$$PrivacyPolicyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isPrivacyPolicy});
}

/// @nodoc
class __$$PrivacyPolicyEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PrivacyPolicyEventImpl>
    implements _$$PrivacyPolicyEventImplCopyWith<$Res> {
  __$$PrivacyPolicyEventImplCopyWithImpl(_$PrivacyPolicyEventImpl _value,
      $Res Function(_$PrivacyPolicyEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPrivacyPolicy = null,
  }) {
    return _then(_$PrivacyPolicyEventImpl(
      isPrivacyPolicy: null == isPrivacyPolicy
          ? _value.isPrivacyPolicy
          : isPrivacyPolicy // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PrivacyPolicyEventImpl implements PrivacyPolicyEvent {
  const _$PrivacyPolicyEventImpl({required this.isPrivacyPolicy});

  @override
  final bool isPrivacyPolicy;

  @override
  String toString() {
    return 'AuthEvent.isPrivacyPolicy(isPrivacyPolicy: $isPrivacyPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivacyPolicyEventImpl &&
            (identical(other.isPrivacyPolicy, isPrivacyPolicy) ||
                other.isPrivacyPolicy == isPrivacyPolicy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPrivacyPolicy);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivacyPolicyEventImplCopyWith<_$PrivacyPolicyEventImpl> get copyWith =>
      __$$PrivacyPolicyEventImplCopyWithImpl<_$PrivacyPolicyEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) checkPhoneNumber,
    required TResult Function() changeAuthStatusEvent,
    required TResult Function() changeLoginStatusEvent,
    required TResult Function() changeOtpStatusEvent,
    required TResult Function() changeResetPasswordStatusEvent,
    required TResult Function(String type) setRegisterPageTypeEvent,
    required TResult Function(String phone, String password) login,
    required TResult Function(String otpCode) register,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String password) sendOtp,
    required TResult Function(int otpCode) verifyOtp,
    required TResult Function(bool isPrivacyPolicy) isPrivacyPolicy,
  }) {
    return isPrivacyPolicy(this.isPrivacyPolicy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function()? changeLoginStatusEvent,
    TResult? Function()? changeOtpStatusEvent,
    TResult? Function()? changeResetPasswordStatusEvent,
    TResult? Function(String type)? setRegisterPageTypeEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String otpCode)? register,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String password)? sendOtp,
    TResult? Function(int otpCode)? verifyOtp,
    TResult? Function(bool isPrivacyPolicy)? isPrivacyPolicy,
  }) {
    return isPrivacyPolicy?.call(this.isPrivacyPolicy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function()? changeLoginStatusEvent,
    TResult Function()? changeOtpStatusEvent,
    TResult Function()? changeResetPasswordStatusEvent,
    TResult Function(String type)? setRegisterPageTypeEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String otpCode)? register,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String password)? sendOtp,
    TResult Function(int otpCode)? verifyOtp,
    TResult Function(bool isPrivacyPolicy)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (isPrivacyPolicy != null) {
      return isPrivacyPolicy(this.isPrivacyPolicy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(ChangeLoginStatusEvent value)
        changeLoginStatusEvent,
    required TResult Function(ChangeOtpStatusEvent value) changeOtpStatusEvent,
    required TResult Function(ChangeResetPasswordStatusEvent value)
        changeResetPasswordStatusEvent,
    required TResult Function(SetRegisterPageType value)
        setRegisterPageTypeEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(RegisterEvent value) register,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(PrivacyPolicyEvent value) isPrivacyPolicy,
  }) {
    return isPrivacyPolicy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult? Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult? Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult? Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(RegisterEvent value)? register,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
  }) {
    return isPrivacyPolicy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(ChangeLoginStatusEvent value)? changeLoginStatusEvent,
    TResult Function(ChangeOtpStatusEvent value)? changeOtpStatusEvent,
    TResult Function(ChangeResetPasswordStatusEvent value)?
        changeResetPasswordStatusEvent,
    TResult Function(SetRegisterPageType value)? setRegisterPageTypeEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(RegisterEvent value)? register,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(PrivacyPolicyEvent value)? isPrivacyPolicy,
    required TResult orElse(),
  }) {
    if (isPrivacyPolicy != null) {
      return isPrivacyPolicy(this);
    }
    return orElse();
  }
}

abstract class PrivacyPolicyEvent implements AuthEvent {
  const factory PrivacyPolicyEvent({required final bool isPrivacyPolicy}) =
      _$PrivacyPolicyEventImpl;

  bool get isPrivacyPolicy;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivacyPolicyEventImplCopyWith<_$PrivacyPolicyEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get registerPageType => throw _privateConstructorUsedError;
  bool? get isPrivacyPolicy => throw _privateConstructorUsedError;
  VerifyPhoneNumberStatus get authStatus => throw _privateConstructorUsedError;
  BlocStatus get loginStatus => throw _privateConstructorUsedError;
  BlocStatus get registerStatus => throw _privateConstructorUsedError;
  BlocStatus get otpStatus => throw _privateConstructorUsedError;
  BlocStatus get otpVerifyStatus => throw _privateConstructorUsedError;
  BlocStatus get resetPasswordStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {String? phoneNumber,
      String? password,
      String? registerPageType,
      bool? isPrivacyPolicy,
      VerifyPhoneNumberStatus authStatus,
      BlocStatus loginStatus,
      BlocStatus registerStatus,
      BlocStatus otpStatus,
      BlocStatus otpVerifyStatus,
      BlocStatus resetPasswordStatus,
      String? errorMessage});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? registerPageType = freezed,
    Object? isPrivacyPolicy = freezed,
    Object? authStatus = null,
    Object? loginStatus = null,
    Object? registerStatus = null,
    Object? otpStatus = null,
    Object? otpVerifyStatus = null,
    Object? resetPasswordStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      registerPageType: freezed == registerPageType
          ? _value.registerPageType
          : registerPageType // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivacyPolicy: freezed == isPrivacyPolicy
          ? _value.isPrivacyPolicy
          : isPrivacyPolicy // ignore: cast_nullable_to_non_nullable
              as bool?,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as VerifyPhoneNumberStatus,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      otpStatus: null == otpStatus
          ? _value.otpStatus
          : otpStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      otpVerifyStatus: null == otpVerifyStatus
          ? _value.otpVerifyStatus
          : otpVerifyStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      resetPasswordStatus: null == resetPasswordStatus
          ? _value.resetPasswordStatus
          : resetPasswordStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? phoneNumber,
      String? password,
      String? registerPageType,
      bool? isPrivacyPolicy,
      VerifyPhoneNumberStatus authStatus,
      BlocStatus loginStatus,
      BlocStatus registerStatus,
      BlocStatus otpStatus,
      BlocStatus otpVerifyStatus,
      BlocStatus resetPasswordStatus,
      String? errorMessage});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? registerPageType = freezed,
    Object? isPrivacyPolicy = freezed,
    Object? authStatus = null,
    Object? loginStatus = null,
    Object? registerStatus = null,
    Object? otpStatus = null,
    Object? otpVerifyStatus = null,
    Object? resetPasswordStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AuthStateImpl(
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      registerPageType: freezed == registerPageType
          ? _value.registerPageType
          : registerPageType // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivacyPolicy: freezed == isPrivacyPolicy
          ? _value.isPrivacyPolicy
          : isPrivacyPolicy // ignore: cast_nullable_to_non_nullable
              as bool?,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as VerifyPhoneNumberStatus,
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      registerStatus: null == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      otpStatus: null == otpStatus
          ? _value.otpStatus
          : otpStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      otpVerifyStatus: null == otpVerifyStatus
          ? _value.otpVerifyStatus
          : otpVerifyStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      resetPasswordStatus: null == resetPasswordStatus
          ? _value.resetPasswordStatus
          : resetPasswordStatus // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.phoneNumber,
      this.password,
      this.registerPageType,
      this.isPrivacyPolicy,
      required this.authStatus,
      required this.loginStatus,
      required this.registerStatus,
      required this.otpStatus,
      required this.otpVerifyStatus,
      required this.resetPasswordStatus,
      this.errorMessage});

  @override
  final String? phoneNumber;
  @override
  final String? password;
  @override
  final String? registerPageType;
  @override
  final bool? isPrivacyPolicy;
  @override
  final VerifyPhoneNumberStatus authStatus;
  @override
  final BlocStatus loginStatus;
  @override
  final BlocStatus registerStatus;
  @override
  final BlocStatus otpStatus;
  @override
  final BlocStatus otpVerifyStatus;
  @override
  final BlocStatus resetPasswordStatus;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthState(phoneNumber: $phoneNumber, password: $password, registerPageType: $registerPageType, isPrivacyPolicy: $isPrivacyPolicy, authStatus: $authStatus, loginStatus: $loginStatus, registerStatus: $registerStatus, otpStatus: $otpStatus, otpVerifyStatus: $otpVerifyStatus, resetPasswordStatus: $resetPasswordStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.registerPageType, registerPageType) ||
                other.registerPageType == registerPageType) &&
            (identical(other.isPrivacyPolicy, isPrivacyPolicy) ||
                other.isPrivacyPolicy == isPrivacyPolicy) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.registerStatus, registerStatus) ||
                other.registerStatus == registerStatus) &&
            (identical(other.otpStatus, otpStatus) ||
                other.otpStatus == otpStatus) &&
            (identical(other.otpVerifyStatus, otpVerifyStatus) ||
                other.otpVerifyStatus == otpVerifyStatus) &&
            (identical(other.resetPasswordStatus, resetPasswordStatus) ||
                other.resetPasswordStatus == resetPasswordStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      phoneNumber,
      password,
      registerPageType,
      isPrivacyPolicy,
      authStatus,
      loginStatus,
      registerStatus,
      otpStatus,
      otpVerifyStatus,
      resetPasswordStatus,
      errorMessage);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final String? phoneNumber,
      final String? password,
      final String? registerPageType,
      final bool? isPrivacyPolicy,
      required final VerifyPhoneNumberStatus authStatus,
      required final BlocStatus loginStatus,
      required final BlocStatus registerStatus,
      required final BlocStatus otpStatus,
      required final BlocStatus otpVerifyStatus,
      required final BlocStatus resetPasswordStatus,
      final String? errorMessage}) = _$AuthStateImpl;

  @override
  String? get phoneNumber;
  @override
  String? get password;
  @override
  String? get registerPageType;
  @override
  bool? get isPrivacyPolicy;
  @override
  VerifyPhoneNumberStatus get authStatus;
  @override
  BlocStatus get loginStatus;
  @override
  BlocStatus get registerStatus;
  @override
  BlocStatus get otpStatus;
  @override
  BlocStatus get otpVerifyStatus;
  @override
  BlocStatus get resetPasswordStatus;
  @override
  String? get errorMessage;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

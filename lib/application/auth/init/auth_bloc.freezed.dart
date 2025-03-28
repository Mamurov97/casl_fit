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
    required TResult Function(String phone, String password) login,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String phone) sendOtp,
    required TResult Function(String phone, int otpCode) verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String phone)? sendOtp,
    TResult? Function(String phone, int otpCode)? verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String phone)? sendOtp,
    TResult Function(String phone, int otpCode)? verifyOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
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
    required TResult Function(String phone, String password) login,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String phone) sendOtp,
    required TResult Function(String phone, int otpCode) verifyOtp,
  }) {
    return checkPhoneNumber(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String phone)? sendOtp,
    TResult? Function(String phone, int otpCode)? verifyOtp,
  }) {
    return checkPhoneNumber?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String phone)? sendOtp,
    TResult Function(String phone, int otpCode)? verifyOtp,
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
    required TResult Function(LoginEvent value) login,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
  }) {
    return checkPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
  }) {
    return checkPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
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
    required TResult Function(String phone, String password) login,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String phone) sendOtp,
    required TResult Function(String phone, int otpCode) verifyOtp,
  }) {
    return changeAuthStatusEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String phone)? sendOtp,
    TResult? Function(String phone, int otpCode)? verifyOtp,
  }) {
    return changeAuthStatusEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String phone)? sendOtp,
    TResult Function(String phone, int otpCode)? verifyOtp,
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
    required TResult Function(LoginEvent value) login,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
  }) {
    return changeAuthStatusEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
  }) {
    return changeAuthStatusEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
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
    required TResult Function(String phone, String password) login,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String phone) sendOtp,
    required TResult Function(String phone, int otpCode) verifyOtp,
  }) {
    return login(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String phone)? sendOtp,
    TResult? Function(String phone, int otpCode)? verifyOtp,
  }) {
    return login?.call(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String phone)? sendOtp,
    TResult Function(String phone, int otpCode)? verifyOtp,
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
    required TResult Function(LoginEvent value) login,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
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
    required TResult Function(String phone, String password) login,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String phone) sendOtp,
    required TResult Function(String phone, int otpCode) verifyOtp,
  }) {
    return passwordRecovery(phone, password, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String phone)? sendOtp,
    TResult? Function(String phone, int otpCode)? verifyOtp,
  }) {
    return passwordRecovery?.call(phone, password, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String phone)? sendOtp,
    TResult Function(String phone, int otpCode)? verifyOtp,
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
    required TResult Function(LoginEvent value) login,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
  }) {
    return passwordRecovery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
  }) {
    return passwordRecovery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
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
  $Res call({String phone});
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
    Object? phone = null,
  }) {
    return _then(_$SendOtpEventImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOtpEventImpl implements SendOtpEvent {
  const _$SendOtpEventImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthEvent.sendOtp(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpEventImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

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
    required TResult Function(String phone, String password) login,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String phone) sendOtp,
    required TResult Function(String phone, int otpCode) verifyOtp,
  }) {
    return sendOtp(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String phone)? sendOtp,
    TResult? Function(String phone, int otpCode)? verifyOtp,
  }) {
    return sendOtp?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String phone)? sendOtp,
    TResult Function(String phone, int otpCode)? verifyOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class SendOtpEvent implements AuthEvent {
  const factory SendOtpEvent({required final String phone}) =
      _$SendOtpEventImpl;

  String get phone;

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
  $Res call({String phone, int otpCode});
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
    Object? phone = null,
    Object? otpCode = null,
  }) {
    return _then(_$VerifyOtpEventImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VerifyOtpEventImpl implements VerifyOtpEvent {
  const _$VerifyOtpEventImpl({required this.phone, required this.otpCode});

  @override
  final String phone;
  @override
  final int otpCode;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(phone: $phone, otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, otpCode);

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
    required TResult Function(String phone, String password) login,
    required TResult Function(String phone, String password, String otpCode)
        passwordRecovery,
    required TResult Function(String phone) sendOtp,
    required TResult Function(String phone, int otpCode) verifyOtp,
  }) {
    return verifyOtp(phone, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? checkPhoneNumber,
    TResult? Function()? changeAuthStatusEvent,
    TResult? Function(String phone, String password)? login,
    TResult? Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult? Function(String phone)? sendOtp,
    TResult? Function(String phone, int otpCode)? verifyOtp,
  }) {
    return verifyOtp?.call(phone, otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? checkPhoneNumber,
    TResult Function()? changeAuthStatusEvent,
    TResult Function(String phone, String password)? login,
    TResult Function(String phone, String password, String otpCode)?
        passwordRecovery,
    TResult Function(String phone)? sendOtp,
    TResult Function(String phone, int otpCode)? verifyOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(phone, otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPhoneNumber value) checkPhoneNumber,
    required TResult Function(ChangeAuthStatusEvent value)
        changeAuthStatusEvent,
    required TResult Function(LoginEvent value) login,
    required TResult Function(PasswordRecoveryEvent value) passwordRecovery,
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult? Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult? Function(LoginEvent value)? login,
    TResult? Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPhoneNumber value)? checkPhoneNumber,
    TResult Function(ChangeAuthStatusEvent value)? changeAuthStatusEvent,
    TResult Function(LoginEvent value)? login,
    TResult Function(PasswordRecoveryEvent value)? passwordRecovery,
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtpEvent implements AuthEvent {
  const factory VerifyOtpEvent(
      {required final String phone,
      required final int otpCode}) = _$VerifyOtpEventImpl;

  String get phone;
  int get otpCode;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpEventImplCopyWith<_$VerifyOtpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  VerifyPhoneNumberStatus get authStatus => throw _privateConstructorUsedError;
  BlocStatus get loginStatus => throw _privateConstructorUsedError;
  BlocStatus get registerStatus => throw _privateConstructorUsedError;
  BlocStatus get otpStatus => throw _privateConstructorUsedError;
  BlocStatus get otpVerifyStatus => throw _privateConstructorUsedError;
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
      {VerifyPhoneNumberStatus authStatus,
      BlocStatus loginStatus,
      BlocStatus registerStatus,
      BlocStatus otpStatus,
      BlocStatus otpVerifyStatus,
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
    Object? authStatus = null,
    Object? loginStatus = null,
    Object? registerStatus = null,
    Object? otpStatus = null,
    Object? otpVerifyStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
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
      {VerifyPhoneNumberStatus authStatus,
      BlocStatus loginStatus,
      BlocStatus registerStatus,
      BlocStatus otpStatus,
      BlocStatus otpVerifyStatus,
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
    Object? authStatus = null,
    Object? loginStatus = null,
    Object? registerStatus = null,
    Object? otpStatus = null,
    Object? otpVerifyStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AuthStateImpl(
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
      {required this.authStatus,
      required this.loginStatus,
      required this.registerStatus,
      required this.otpStatus,
      required this.otpVerifyStatus,
      this.errorMessage});

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
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthState(authStatus: $authStatus, loginStatus: $loginStatus, registerStatus: $registerStatus, otpStatus: $otpStatus, otpVerifyStatus: $otpVerifyStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
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
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authStatus, loginStatus,
      registerStatus, otpStatus, otpVerifyStatus, errorMessage);

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
      {required final VerifyPhoneNumberStatus authStatus,
      required final BlocStatus loginStatus,
      required final BlocStatus registerStatus,
      required final BlocStatus otpStatus,
      required final BlocStatus otpVerifyStatus,
      final String? errorMessage}) = _$AuthStateImpl;

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
  String? get errorMessage;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
